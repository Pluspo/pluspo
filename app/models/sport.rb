# == Schema Information
#
# Table name: sports
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sports_on_name  (name) UNIQUE
#
class Sport < ApplicationRecord
  has_many :area_sports, dependent: :destroy
  has_many :areas, through: :area_sports

  validates :name, presence: true, uniqueness: true
end
