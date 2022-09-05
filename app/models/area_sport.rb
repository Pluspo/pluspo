class AreaSport < ApplicationRecord
  belongs_to :area
  belongs_to :sport
  has_many :sport_shedules, dependent: :destroy
  has_many :batches, dependent: :destroy
end
