class System < ActiveRecord::Base

	has_many :sections

	has_many :destinations, :class_name => "Label", :foreign_key => "d_system"
  has_many :sources, :class_name => "Label", :foreign_key => "s_system"
end
