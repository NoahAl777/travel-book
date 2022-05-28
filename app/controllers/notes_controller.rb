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
end