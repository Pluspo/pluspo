# == Schema Information
#
# Table name: batches
#
#  id            :integer          not null, primary key
#  cycle         :integer          default("wednesday"), not null
#  date_time     :datetime         not null
#  finished_at   :datetime         not null
#  started_at    :datetime         not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  area_sport_id :integer          not null
#
# Indexes
#
#  index_batches_on_area_sport_id  (area_sport_id)
#
# Foreign Keys
#
#  area_sport_id  (area_sport_id => area_sports.id)
#
class Batch < ApplicationRecord
  belongs_to :area_sport
  validates :date_time, presence: true
  enum cycle: { wednesday: 0 }
end
