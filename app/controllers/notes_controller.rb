class NotesController < ApplicationController
  get "/notes" do
    notes = Note.all
    notes.to_json(include: :destination)
  end

  get "/notes/:id" do
    begin  
      Note.find(params[:id]).to_json(include: :destination)
    rescue ActiveRecord::RecordNotFound => e
      {errors: e}.to_json
    end
  end

  post "/destinations/:destination_id/notes" do
    destination = Destination.find(params[:destination_id])
    destination.notes.create(params)
    destination.notes.last.to_json
  end

  delete "/notes/:id" do
    begin
      Note.find(params[:id]).destroy
    rescue ActiveRecord::RecordNotFound => e
      {errors: e}.to_json
    end
  end

  patch "/notes/:id" do
    note = Note.find(params[:id])
    note.update(
      overall_rating: params[:overall_rating],
      safety_rating: params[:safety_rating],
      food_rating: params[:food_rating],
      must_do: params[:must_do],
      additional_notes: params[:additional_notes]
    )
    note.to_json
  end
  
end