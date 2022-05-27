class DestinationsController < ApplicationController
  get "/destinations" do
    destinations = Destination.all
    destinations.to_json
  end
end