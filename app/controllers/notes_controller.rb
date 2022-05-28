class NotesController < ApplicationController
  get "/notes" do
    notes = Note.all
    notes.to_json(include: :destination)
  end

  get "/notes/:id" do
    note = Note.find(params[:id])
    note.to_json(include: :destination)
  end

  post "/notes" do
    note = Note.create(params)
    note.to_json
  end

  delete "/notes/:id" do
    note = Note.find(params[:id])
    note.destroy
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