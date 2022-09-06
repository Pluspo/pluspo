class Area < ApplicationRecord
  belongs_to :place
  has_many :area_sports, dependent: :destroy
  has_many :sports, throught: :area_sports
  with_options presence: true do
    validates :name
    validates :opened_at
    validates :closed_at
    validates :address
  end
end
