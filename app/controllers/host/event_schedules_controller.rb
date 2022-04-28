class Host::EventSchedulesController < ApplicationController
  def show
    @event_schedule = EventSchedule.find(params[:id])
    @guests = @event_schedule.event.guests.all
  end

  def schedule_confirmation
  end

  def update
  end

end
