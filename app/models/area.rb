class Area < ApplicationRecord
  belongs_to :place
  with_options dependent: :destroy do
    has_many :area_sports
    has_many :sports, through: :area_sports
  end
  with_options presence: true do
    validates :name
    validates :opened_at
    validates :closed_at
    validates :note
  end
end
