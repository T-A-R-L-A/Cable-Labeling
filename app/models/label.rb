class Label < ActiveRecord::Base

	belongs_to :d_system, :class_name => "System"
	belongs_to :s_system, :class_name => "System"
	
	belongs_to :d_section, :class_name => "Section"
	belongs_to :s_section, :class_name => "Section"
	
	belongs_to :d_device, :class_name => "Device"
	belongs_to :s_device, :class_name => "Device"

	belongs_to :cable
	belongs_to :cabinet

end
