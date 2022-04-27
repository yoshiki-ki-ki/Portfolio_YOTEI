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
    redirect_to schedule_path(token: @event.token)
  end

  private
  ## cocoon利用時のパラメータ設定
  def event_params
    params.require(:event).permit(
      :title, :schedule_time, :comment,
      event_schedules_attributes: [:id, :candidate_date, :candidate_time_start, :candidate_time_end , :_destroy])
  end

end
