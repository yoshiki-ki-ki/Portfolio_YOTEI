class Event < ApplicationRecord
  belongs_to :host
  has_many :event_schedules, dependent: :destroy
  has_many :guests, dependent: :destroy
  
  class << self
    def create!(params)
      event = new(name: params[:title, :schedule_time, :comment])
      event.event_schedules.build(params[:event_schedules])
      event.save!
      event
    end
  end
end
