class Sport < ApplicationRecord
  has_many :areas_sports, dependent: :destroy
  has_many :sport_shedules, dependent: :destroy
  validates :name, presence: true, uniqueness:true
end
