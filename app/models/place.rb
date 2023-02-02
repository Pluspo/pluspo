# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  address    :string           not null
#  city       :string           not null
#  closed_at  :datetime         not null
#  latitude   :decimal(9, 6)
#  longitude  :decimal(10, 6)
#  message    :text
#  name       :string           not null
#  opened_at  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_places_on_city  (city)
#  index_places_on_name  (name) UNIQUE
#
class Place < ApplicationRecord
  has_many :areas, dependent: :destroy
  geocoded_by :full_address
  after_validation :geocode

  validates :name, presence: true, uniqueness: true
  with_options presence: true do
    validates :opened_at
    validates :closed_at
    validates :address
    validates :city
  end

  def full_address
    "東京都#{city}#{address}"
  end
end
