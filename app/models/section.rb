class Section < ActiveRecord::Base

	belongs_to :system
	has_many :devices

	has_many :destinations, :class_name => "Label", :foreign_key => "d_section"
  has_many :sources, :class_name => "Label", :foreign_key => "s_section"
end
