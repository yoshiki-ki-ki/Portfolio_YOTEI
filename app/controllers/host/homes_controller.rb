class Host::HomesController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
  end
end
