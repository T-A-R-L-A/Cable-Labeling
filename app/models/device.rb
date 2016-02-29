class Device < ActiveRecord::Base

	belongs_to :section

	has_many :destinations, :class_name => "Label", :foreign_key => "d_device"
  has_many :sources, :class_name => "Label", :foreign_key => "s_device"
end
