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
end
