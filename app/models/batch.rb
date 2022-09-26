# == Schema Information
#
# Table name: batches
#
#  id            :integer          not null, primary key
#  cycle         :integer          default("unknown"), not null
#  finished_at   :string           not null
#  started_at    :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  area_sport_id :integer          not null
#
# Indexes
#
#  index_batches_on_area_sport_id  (area_sport_id)
#
# Foreign Keys
#
#  area_sport_id  (area_sport_id => area_sports.id)
#
class Batch < ApplicationRecord
  enum cycle: {
    unknown: 0,
    every: 1,
    every_monday: 10,
    first_monday: 11,
    second_monday: 12,
    third_monday: 13,
    fourth_monday: 14,
    fifth_monday: 15,
    every_tuesday: 20,
    first_tuesday: 21,
    second_tuesday: 22,
    third_tuesday: 23,
    fourth_tuesday: 24,
    fifth_tuesday: 25,
    every_wednesday: 30,
    first_wednesday: 31,
    second_wednesday: 32,
    third_wednesday: 33,
    fourth_wednesday: 34,
    fifth_wednesday: 35,
    every_thursday: 40,
    first_thursday: 41,
    second_thursday: 42,
    third_thursday: 43,
    fourth_thursday: 44,
    fifth_thursday: 45,
    every_friday: 50,
    first_friday: 51,
    second_friday: 52,
    third_friday: 53,
    fourth_friday: 54,
    fifth_friday: 55,
    every_saturday: 60,
    first_saturday: 61,
    second_saturday: 62,
    third_saturday: 63,
    fourth_saturday: 64,
    fifth_saturday: 65,
    every_sunday: 70,
    first_sunday: 71,
    second_sunday: 72,
    third_sunday: 73,
    fourth_sunday: 74,
    fifth_sunday: 75
  }

  belongs_to :area_sport

  with_options presence: true do
    validates :started_at
    validates :finished_at
  end
end
