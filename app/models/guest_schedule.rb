class GuestSchedule < ApplicationRecord
  validates :join_flag, presence: true
  belongs_to :event_schedule
end
