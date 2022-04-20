class Host::HomesController < ApplicationController
  def index
    @event = Event.all
  end
end
