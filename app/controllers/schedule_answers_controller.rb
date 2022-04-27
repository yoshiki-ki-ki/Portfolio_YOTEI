class ScheduleAnswersController < ApplicationController
  def new
    @guest = Guest.new
    @event = Event.find_by(token: params[:token])
  end

  def answer_confirmation
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
   # @guest_schedules = params[:guest][:guest_schedules]
    session[:guest_schedules] = params[:guest][:guest_schedules].to_unsafe_h
  end

  def create
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
    @guest.event_id = @event.id
    @guest.save
    #session[:guest_schedules]
    session[:guest_schedules].each do |guest_schedule_params|
      guest_schedule = GuestSchedule.new
      guest_schedule.guest_id = @guest.id
      guest_schedule.event_schedule_id = guest_schedule_params[1]["parent_schedule"].to_i
      guest_schedule.join_flag = guest_schedule_params[1]["join_flag"]
      guest_schedule.save
    end
    redirect_to schedule_path(token: @event.token)
  end

  def answer
  end

  def answer_pass
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def guest_params
    params.require(:guest).permit(
      :guest_name, :comment_to_host, :password,
      guest_schedules_attributes: [:join_flag])
  end

end
