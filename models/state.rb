require './models/jsonable'

class State < JSONable

	@id
	@name
	@abbreviation
	@url #should this be here?


	def initialize
		@id = "129"
		@name = "Buenos Aires"
		@abbreviation = "BA"
		@url = "buenosaires.olx.com.ar"
	end

end