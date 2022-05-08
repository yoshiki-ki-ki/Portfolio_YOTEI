class Host::EventSchedulesController < ApplicationController
  def show
    @event_schedule = EventSchedule.find(params[:id])
    @guests = @event_schedule.event.guests.all.order(created_at: :desc)
    @guest_schedules = GuestSchedule.where(event_schedule_id: params[:id])
  end

  def schedule_confirmation
    @event_schedule = EventSchedule.find(params[:id])
    @event = @event_schedule.event
    @dicision_date = @event_schedule.candidate_date
    @decision_time_start = @event_schedule.candidate_time_start
    @decision_time_end = @event_schedule.candidate_time_end
  end


end
