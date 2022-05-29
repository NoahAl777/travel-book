class DestinationsController < ApplicationController

  get "/destinations" do
    destinations = Destination.all
    destinations.to_json(include: :notes)
  end

  get "/destinations/:id" do
    begin
      Destination.find(params[:id]).to_json(include: :notes)
    rescue ActiveRecord::RecordNotFound => e
      {errors: e}.to_json
    end
  end

  post "/destinations" do
    destination = Destination.create(params)
    destination.to_json
  end

  delete "/destinations/:id" do
    destination = Destination.find_by(id: params[:id])
    destination.destroy
  end

  patch "/destinations/:id" do
    destination = Destination.find_by(id: params[:id])
    destination.update(
      country: params[:country],
      state_province: params[:state_province],
      city: params[:city],
      zipcode: params[:zipcode],
      image: params[:image]
    )
    destination.to_json
  end

end