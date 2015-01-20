class Clip < ActiveRecord::Base
	before_save :make_it_permalink

	def make_it_permalink
		self.permalink = SecureRandom.hex(4)
	end

end
