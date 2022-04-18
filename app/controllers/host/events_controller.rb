class Host::EventsController < ApplicationController
  before_action :authenticate_host!

  def new
    @event = Event.new
    @event_schedules = @event.event_schedules.build
  end

  def event_cofirmation
    @event = Event.new(event_params)
    @event.host_id = current_host.id
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_host.id
    @event.save
    redirect_to schedule_path(event_params)
  end

  private

  ## accepts_nested_attributes_forを使わず、複数の子レコードを保存する場合
  # def event_params
  #   params.require(:event).permit(:title, :schedule_time, :comment, event_schedules: [:candidate_date_start, :candidate_date_end])
  # end

  def event_params
    params.require(:event).permit(
      :title, :schedule_time, :comment,
      event_schedules_attributes: [:id, :candidate_date_start, :candidate_date_end ,:_destroy])
  end

end
