# == Schema Information
#
# Table name: area_sports
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area_id    :integer          not null
#  sport_id   :integer          not null
#
# Indexes
#
#  index_area_sports_on_area_id   (area_id)
#  index_area_sports_on_sport_id  (sport_id)
#
# Foreign Keys
#
#  area_id   (area_id => areas.id)
#  sport_id  (sport_id => sports.id)
#
class AreaSport < ApplicationRecord
  belongs_to :area
  belongs_to :sport
  has_many :schedules, dependent: :destroy
  has_many :batches, dependent: :destroy
end
