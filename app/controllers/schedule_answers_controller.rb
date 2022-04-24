class ScheduleAnswersController < ApplicationController
  def new
    @guest = Guest.new
    @event = Event.find_by(token: params[:token])
  end

  def answer_confirmation
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
  end

  def create
    @guest = Guest.new(guest_params)
    @event = Event.find_by(token: params[:token])
    @guest.save
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
