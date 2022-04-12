class Guest < ApplicationRecord
  belongs_to :event
  has_many :guest_schedules, dependent: :destroy
end
