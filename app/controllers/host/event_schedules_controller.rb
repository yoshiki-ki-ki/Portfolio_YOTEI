class Host::EventSchedulesController < ApplicationController
  def show
    @event_schedule = EventSchedule.find(params[:id])
    @guests = @event_schedule.event.guests.all
    @guest_schedules = GuestSchedule.where(event_schedule_id: params[:id])
  end

  def schedule_confirmation
  end

  def update
  end

end
