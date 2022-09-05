class SportShedule < ApplicationRecord
  belongs_to :area_sport
  validates :cycles, presence: true
  validates :opened_at, presence: true
  validates :closed_at, presence: true
end
