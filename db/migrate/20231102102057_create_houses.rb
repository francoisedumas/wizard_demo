class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :current_family_last_name
      t.string :interior_color
      t.string :exterior_color
      t.integer :rooms
      t.integer :square_feet

      t.timestamps
    end
  end
end
