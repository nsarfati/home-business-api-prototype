require './models/jsonable'

class Category < JSONable


	attr_accessor :childs
	
	@id
	@name
	@textLink # ?
	@childs

	def initialize
		@id = "1"
		@name = "For Sale"
		@textLink = 'For Sale Category Text Link'
		@childs = []
	end

end