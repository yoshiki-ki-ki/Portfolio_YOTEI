class SchedulesController < ApplicationController
  def show
    @event = Event.find_by(token: params[:token])
    @guest = @event.guests.all
    @url = request.url
  end
end
