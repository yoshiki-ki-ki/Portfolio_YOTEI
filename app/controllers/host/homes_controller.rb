class Host::HomesController < ApplicationController
  def index
    # @events = Event.page(params[:page]).order(created_at: :desc)
    @events = Event.where(host_id: current_host.id).page(params[:page]).order(created_at: :desc)
  end
end
