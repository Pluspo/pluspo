class Area < ApplicationRecord
  belongs_to :place
  has_many :area_sports
  has_many :sports, throught: :area_sports
  validates :name, presence: true
  validates :opened_at, presence: true
  validates :closed_at, presence: true
  validates :address, presence: true
end
