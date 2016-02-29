class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :description

      t.timestamps null: false
    end

    add_reference :labels, :s_system, index: true
    add_reference :labels, :d_system, index: true
    add_reference :labels, :s_section, index: true
    add_reference :labels, :d_section, index: true
    add_reference :labels, :s_device, index: true
    add_reference :labels, :d_device, index: true

  end
end
