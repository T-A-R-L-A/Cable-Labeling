class AddNametoDevices < ActiveRecord::Migration
  def change
	add_column :devices, :name, :string
  	change_column :devices, :description, :text
  end
end
