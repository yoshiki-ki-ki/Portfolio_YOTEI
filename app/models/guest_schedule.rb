class GuestSchedule < ApplicationRecord
  validates :join_flag, inclusion: {in: [true, false]}
  belongs_to :event_schedule
end
