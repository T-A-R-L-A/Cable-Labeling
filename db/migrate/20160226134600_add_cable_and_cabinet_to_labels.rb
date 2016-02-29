class AddCableAndCabinetToLabels < ActiveRecord::Migration
  def change
    change_table :labels do |t|
	t.belongs_to :cable
	t.belongs_to :cabinet
    end



  end
end
