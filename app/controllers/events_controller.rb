class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  def index
    @events = Event.where(start: params[:start]..params[:end])
    @event = Event.new
  end

  def show; end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    byebug

    @event = Event.new(event_params)
    @event.save
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date_range, :start, :end, :color)
  end
end
