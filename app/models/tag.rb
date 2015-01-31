class Tag < ActiveRecord::Base
	has_many	:taggings
	has_many	:clips, :through => :taggings
end
