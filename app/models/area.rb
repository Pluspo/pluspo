class Area < ApplicationRecord
  belongs_to :place
  validates :name, presence: true
  validates :opened_at, presence: true
  validates :closed_at, presence: true
  validates :address, presence: true
end
