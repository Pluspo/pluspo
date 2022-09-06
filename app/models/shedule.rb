class SportShedule < ApplicationRecord
  belongs_to :area_sport
  with_options presence: true do
    validates :cycles
    validates :opened_at
    validates :closed_at
  end
end
