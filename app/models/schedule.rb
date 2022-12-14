# == Schema Information
#
# Table name: schedules
#
#  id            :integer          not null, primary key
#  finished_at   :datetime         not null
#  started_at    :datetime         not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  area_sport_id :integer          not null
#
# Indexes
#
#  index_schedules_on_area_sport_id  (area_sport_id)
#  index_schedules_on_finished_at    (finished_at)
#  index_schedules_on_started_at     (started_at)
#
# Foreign Keys
#
#  area_sport_id  (area_sport_id => area_sports.id)
#
class Schedule < ApplicationRecord
  belongs_to :area_sport

  delegate :area, :sport, to: :area_sport
  delegate :place, to: :area

  with_options presence: true do
    validates :started_at
    validates :finished_at
  end

  scope :after_today, -> { where("started_at >= ?", Time.current) }

  class << self
    def insert_schedule_from_batch(batch)
      dates = build_date_from_cycle(batch.cycle)
      times = dates.map(&:to_time)
      started_at_arr = batch.started_at.split(':')
      finished_at_arr = batch.finished_at.split(':')

      times.each do |time|
        Schedule.create!(
          area_sport_id: batch.area_sport_id,
          started_at: time.change(hour: started_at_arr[0], min: started_at_arr[1]),
          finished_at: time.change(hour: finished_at_arr[0], min: finished_at_arr[1])
        )
      end
    end

    # 日付を出すだけ
    # in: batch.cycle, out: [Date, Date, ...]
    def build_date_from_cycle(cycle)
      res = []
      week, day_of_week = cycle.to_s.split('_').map(&:to_sym)

      return [] if (week == :unknown) && day_of_week.nil?

      # cycle = :every のときは来月の日付を全て返す
      # FIXME: :everyは施設の営業時間による。現在は、毎月の日数を全て返している。
      return Date.current.next_month.all_month.to_a if (week == :every) && day_of_week.nil?

      # 来月の最初の :day_of_week 曜日
      # FIXME: 1日が月曜日の時に next_occurring(:monday)とすると、8日を返してしまう
      first_day_of_week = Date.current.next_month.beginning_of_month.next_occurring(day_of_week)
      current_month = first_day_of_week.month

      case week
      when :every
        # 5週間作って
        5.times do |i|
          # 来月の日付だったらpop
          res << first_day_of_week.since(i.week)
          res.pop if res[-1].month != current_month
        end
      when :first
        res << first_day_of_week.since(0.weeks)
      when :second
        res << first_day_of_week.since(1.week)
      when :third
        res << first_day_of_week.since(2.weeks)
      when :fourth
        res << first_day_of_week.since(3.weeks)
      when :fifth
        fifth_day_of_week = first_day_of_week.since(4.weeks)
        res << fifth_day_of_week if fifth_day_of_week.month == current_month
      end

      res
    end
  end
end
