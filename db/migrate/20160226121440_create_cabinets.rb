class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :description
      t.string :abbr
      t.string :room

      t.timestamps null: false
    end
  end
end
