class Host::HomesController < ApplicationController
  def index
    @event = Event.page(params[:page]).order(created_at: :desc)
  end
end
