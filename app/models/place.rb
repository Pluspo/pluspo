class Place < ApplicationRecord
  has_many :areas, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  with_options presence: true do
    validates :opened_at
    validates :closed_at
    validates :address
  end
end
