class SchedulesController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @guest = @event.guests.all
  end
end
