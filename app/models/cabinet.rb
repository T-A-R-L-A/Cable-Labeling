class Cabinet < ActiveRecord::Base

  has_many :labels


 def all_fields
    "#{description}, #{room}, #{abbr}"
  end

end
