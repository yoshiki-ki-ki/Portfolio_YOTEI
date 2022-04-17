class EventSchedule < ApplicationRecord
  # バリデーション
  validates :candidate_date_start, presence: true
  validates :candidate_date_end, presence: true
  
  # アソシエーション
  belongs_to :event
  has_one :guest_schedule
end
