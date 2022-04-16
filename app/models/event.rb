class Event < ApplicationRecord
  belongs_to :host
  has_many :event_schedules, dependent: :destroy
  has_many :guests, dependent: :destroy
  
end
