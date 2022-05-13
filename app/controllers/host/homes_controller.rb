class Host::HomesController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
    # @events = Event.find(current_host.id)
  end
end
