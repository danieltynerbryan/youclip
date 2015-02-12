class Clip < ActiveRecord::Base
	before_save :make_it_permalink
	
	has_many	:taggings
	has_many	:tags, :through => :taggings
	
	def self.tagged_with(name)
		Tag.find_by_name!(name).clips
	end
	
	def self.tag_counts
		Tag.select('tags.*, count(taggings.tag_id) as count').
			joins(:taggings).group('tags.id')
	end
	
	def tag_list
		tags.map(&:name).join(', ')
	end
	
	def tag_list=(names)
		self.tags = names.split('#').map do |n|
			Tag.where(name: n.strip).first_or_create!
		end
	end

	def make_it_permalink
		self.permalink = SecureRandom.hex(6)
	end
end
