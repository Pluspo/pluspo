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

  with_options presence: true do
    validates :started_at
    validates :finished_at
  end

  class << self
    def insert_schedule_from_batch(batch)
      dates = create_date_from_cycle(batch.cycle)
      started_at_arr = batch.started_at.split(':')
      finished_at_arr = batch.finished_at.split(':')

      dates.each do |date|
        Schedule.create!(
          area_sport_id: batch.area_sport_id,
          started_at: date.change(hour: started_at_arr[0], min: started_at_arr[1]),
          finished_at: date.change(hour: finished_at_arr[0], min: finished_at_arr[1])
        )
      end
    end

    # 日付を出すだけ
    def create_date_from_cycle(cycle)
      res = []
      week, day_of_week = cycle.to_s.split('_').map(&:to_sym)

      # :everyのときの処理 # FIX: :everyは施設の営業時間による
      if (week == :every) && day_of_week.nil?
        ((Time.zone.now.next_month.beginning_of_month)..(Time.zone.now.next_month.end_of_month)).each do |i|
          # みたいなことしたい
          res << i.date
        end
        return
      end

      # 来月の最初の :day_of_week 曜日
      first_day_of_week = Time.zone.now.next_month.beginning_of_month.next_occurring(:day_of_week)
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
    end
  end
end
