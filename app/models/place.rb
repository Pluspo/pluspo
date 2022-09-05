class Place < ApplicationRecord
  has_many :areas, dependent: :destroy
  validates :name, presence: true, uniqueness:true
  validates :opened_at, presence: true
  validates :closed_at, presence: true
  validates :address, presence: true
end
