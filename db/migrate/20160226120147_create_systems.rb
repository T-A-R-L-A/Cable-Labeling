class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :description
      t.string :abbr
      t.integer :code

      t.timestamps null: false
    end
  end
end
