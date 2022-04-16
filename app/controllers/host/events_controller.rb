class Host::EventsController < ApplicationController
  before_action :authenticate_host!

  def new
    @event = Event.new
    3.times do
      @event.event_schedules.build
    end
  end

  def event_cofirmation
    byebug
    @event = Event.new(event_params)
    @event.host_id = current_host.id
    @event_info = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_host.id
    @event.save
    redirect_to post_images_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :schedule_time, :comment, event_schedules: [:candidate_date_start, :candidate_date_end])
  end

end
