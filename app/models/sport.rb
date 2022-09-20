class Sport < ApplicationRecord
  has_many :area_sports, dependent: :destroy
  has_many :areas, through: :area_sports
  has_many :schedules, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
