class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :country
      t.string :state_province
      t.string :city
      t.integer :zipcode
      t.string :image
    end
  end
end
