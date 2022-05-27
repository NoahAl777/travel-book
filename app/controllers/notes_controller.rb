class NotesController < ApplicationController
  get "/notes" do
    notes = Note.all
    notes.to_json(include: :destination)
  end
end