class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  def index
    @events = Event.where(start: params[:start]..params[:end])
    @patients = Patient.all

    @event = Event.new
  end

  def show; end

  def new
    @event = Event.new
    @patients = Patient.all
  end

  def edit; end

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to events_path
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
    params.require(:event).permit(:title, :date_range, :start, :end, :color, :patient_id)
  end
end
