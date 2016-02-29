class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :description
      t.string :abbr
      t.integer :code
      t.belongs_to :system, index: true

      t.timestamps null: false
    end
  end
end
