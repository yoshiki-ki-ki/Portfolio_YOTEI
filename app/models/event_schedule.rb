class EventSchedule < ApplicationRecord
  belongs_to :event
  has_one :guest_schedule
end
