class SchedulesController < ApplicationController
  def show
    @event = Event.find_by(token: params[:token])
    @event_schedules = @event.event_schedules.all
    @guest = @event.guests.all.order(created_at: :desc)
    binding.pry
    @url = request.url
  end
end
