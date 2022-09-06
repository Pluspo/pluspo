class Place < ApplicationRecord
  has_many :areas, dependent: :destroy
  with_options presence: true do
    validates :opened_at
    validates :closed_at
    validates :address
    with_options uniqueness: true do
      validates :name
    end
  end
end
