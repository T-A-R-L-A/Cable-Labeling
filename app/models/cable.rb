class Cable < ActiveRecord::Base

	has_many :labels
	self.inheritance_column = nil
end
