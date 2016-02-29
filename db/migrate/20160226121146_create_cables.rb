class CreateCables < ActiveRecord::Migration
  def change
    create_table :cables do |t|
      t.string :type
      t.string :code

      t.timestamps null: false
    end
  end
end
