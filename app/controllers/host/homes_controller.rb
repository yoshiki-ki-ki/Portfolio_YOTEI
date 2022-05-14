class Host::HomesController < ApplicationController
  def index
    @events = Event.where(host_id: current_host.id).page(params[:page]).order(created_at: :desc)
  end
end
