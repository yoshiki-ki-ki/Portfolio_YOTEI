class Host::EventSchedulesController < ApplicationController
  def show
    @event = Event.find_by(token: params[:token])
  end

  def schedule_confirmation
  end

  def update
  end

end
