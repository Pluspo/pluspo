class Batch < ApplicationRecord
  belongs_to :area_sport
  validates :date_time, presence: true
  enum cycle: { wednesday: 0 }
end
