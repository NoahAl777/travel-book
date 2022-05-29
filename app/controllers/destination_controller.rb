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
    destination = Destination.new(params)
    if destination.save 
      destination.to_json
    else
      {errors: destination.errors.full_messages.to_sentence}.to_json
    end
  end

  delete "/destinations/:id" do
    begin
      Destination.find(params[:id]).destroy
    rescue ActiveRecord::RecordNotFound => e
      {errors: e}.to_json
    end
  end

  patch "/destinations/:id" do
    begin
      destination = Destination.find(params[:id])
      destination.update(
        country: params[:country],
        state_province: params[:state_province],
        city: params[:city],
        zipcode: params[:zipcode],
        image: params[:image]
      )
      destination.to_json
    rescue ActiveRecord::RecordNotFound => e
      {errors: e}.to_json
    end
  end

end