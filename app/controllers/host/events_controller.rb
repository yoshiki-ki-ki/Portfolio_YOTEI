class Host::EventsController < ApplicationController
  before_action :authenticate_host!
  
  def new
    @event = Event.new
  end
  
  def event_confirmation
    @event = Event.new(event_params)
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_host.id
    @event.save
    redirect_to post_images_path
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :schedule_time, :comment, :candidate_date_start, :candidate_date_end)
  end
  
end
