class DestinationsController < ApplicationController
  get "/destinations" do
    destinations = Destination.all
    destinations.to_json(include: :notes)
  end

  get "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.to_json(include: :notes)
  end

  post "/destinations" do
    destination = Destination.create(params)
    destination.to_json
  end

end