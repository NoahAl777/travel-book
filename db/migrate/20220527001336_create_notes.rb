class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table notes do |t|
      t.int :overall_rating
      t.int :safety_rating
      t.int :food_rating
      t.string :must_do
      t.string :additional_notes
    end
  end
end
