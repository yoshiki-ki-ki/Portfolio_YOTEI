class ScheduleAnswersController < ApplicationController
  def new
    @guest = Guest.new
    @event = Event.find_by(token: params[:token])
  end

  def answer_confirmation
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
    session[:guest_schedules] = params[:guest][:guest_schedules].to_unsafe_h
    @guest_schedules = []
    session[:guest_schedules].each_with_index do |guest_schedule_params,i|
      guest_schedule = GuestSchedule.new
      guest_schedule.guest_id = @guest.id
      guest_schedule.event_schedule_id = guest_schedule_params[1]["parent_schedule"].to_i
      guest_schedule.join_flag = guest_schedule_params[1]["join_flag"]

      @guest_schedules.push(guest_schedule)
    end
  end

  def create
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
    @guest.event_id = @event.id

    @guest.save
    @guest_schedules = []
    session[:guest_schedules].each_with_index do |guest_schedule_params,i|
      guest_schedule = GuestSchedule.new
      guest_schedule.guest_id = @guest.id
      guest_schedule.event_schedule_id = guest_schedule_params[1]["parent_schedule"].to_i
      guest_schedule.join_flag = guest_schedule_params[1]["join_flag"]
      guest_schedule.save
      @guest_schedules.push(guest_schedule)
    end
    # @guest_schedules = GuestSchedule.where([:guest_id][:event_schedule_id])
    redirect_to schedule_path(token: @event.token)
  end

  def answer
    @guest = Guest.find(params[:id])
  end

  def answer_pass
    guest_id = Guest.find(params[:id])
    if guest_id && guest_id.authenticate(params[:guest][:password])
      redirect_to edit_schedule_answer_path(guest_id, parameter: guest_id.password_digest)
    else
      redirect_to answer_schedule_answer_path
    end
  end

  def edit
    @guest = Guest.find(params[:id])
    @event = @guest.event
    @guest_schedules = @guest.guest_schedules
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    @event = @guest.event
    redirect_to schedule_path(token: @event.token)
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    @event = @guest.event
    redirect_to schedule_path(token: @event.token)
  end

  def guest_params
    params.require(:guest).permit(
      :guest_name, :comment_to_host, :password,
      guest_schedules_attributes: [:join_flag])
  end

end
