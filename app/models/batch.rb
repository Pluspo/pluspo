class Batch < ApplicationRecord
  belongs_to :area_sport
  validates :date_time, presence: true
end
