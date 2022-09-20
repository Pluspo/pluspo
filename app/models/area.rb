class Area < ApplicationRecord
  belongs_to :place
  has_many :area_sports, dependent: :destroy
  has_many :sports, through: :area_sports

  with_options presence: true do
    validates :name
    validates :opened_at
    validates :closed_at
    validates :location
  end

  enum location: { both: 0, outdoors: 1, indoors: 2 }
end
