class Sport < ApplicationRecord
  has_many :area_sports, dependent: :destroy
  has_many :areas, throught: :area_sports
  has_many :sport_shedules, dependent: :destroy
  validates :name, presence: true, uniqueness:true
end
