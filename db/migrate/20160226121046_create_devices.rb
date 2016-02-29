class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :description
      t.string :abbr
      t.belongs_to :section, index: true

      t.timestamps null: false
    end
  end
end
