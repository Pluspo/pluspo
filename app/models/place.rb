class Place < ApplicationRecord
  has_many :areas, dependent: :destroy
end
