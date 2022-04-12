class Host::EventsController < ApplicationController
  before_action :authenticate_host!
  
  def new
    @event = Event.new
  end

  def create
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :schedule_time, :comment, :decision_date_start, :decision_date_end)
  end
  
end
