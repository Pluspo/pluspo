class Shedule < ApplicationRecord
  belongs_to :area_sport
  with_options presence: true do
    validates :cycles
    validates :started_at
    validates :finished_at
  end
end
