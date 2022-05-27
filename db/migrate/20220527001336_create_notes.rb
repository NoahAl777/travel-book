class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :overall_rating
      t.integer :safety_rating
      t.integer :food_rating
      t.string :must_do
      t.string :additional_notes
      t.integer :destination_id
    end
  end
end
