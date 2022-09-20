# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  closed_at  :datetime         not null
#  location   :integer          default("both"), not null
#  name       :string           not null
#  note       :string
#  opened_at  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  place_id   :integer          not null
#
# Indexes
#
#  index_areas_on_place_id  (place_id)
#
# Foreign Keys
#
#  place_id  (place_id => places.id)
#
class Area < ApplicationRecord
  enum location: { both: 0, outdoors: 1, indoors: 2 }

  belongs_to :place
  has_many :area_sports, dependent: :destroy
  has_many :sports, through: :area_sports

  with_options presence: true do
    validates :name
    validates :opened_at
    validates :closed_at
    validates :location
  end
end
