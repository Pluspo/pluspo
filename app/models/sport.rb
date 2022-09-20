class Sport < ApplicationRecord
  with_options dependent: :destroy do
    has_many :area_sports
    has_many :areas, through: :area_sports
  end
  has_many :schedules, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
