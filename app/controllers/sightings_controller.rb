class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sightings, options)
    # render json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find_by(id: params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
