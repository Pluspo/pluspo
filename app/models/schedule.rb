class Schedule < ApplicationRecord
  belongs_to :area_sport

  with_options presence: true do
    validates :started_at
    validates :finished_at
  end
end
