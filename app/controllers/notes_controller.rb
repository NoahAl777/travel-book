class NotesController < ApplicationController
  get "/notes" do
    notes = Note.all
    notes.to_json(include: :destination)
  end

  get "/notes/:id" do
    note = Note.find(params[:id])
    note.to_json(include: :destination)
  end

end