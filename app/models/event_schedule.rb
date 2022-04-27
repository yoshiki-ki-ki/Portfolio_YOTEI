class EventSchedule < ApplicationRecord
  # バリデーション
  validates :candidate_date, presence: true
  validates :candidate_time_start, presence: true
  validates :candidate_time_end, presence: true
  
  # アソシエーション
  belongs_to :event
  has_one :guest_schedule
end
