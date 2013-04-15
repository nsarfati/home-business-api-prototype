require './models/jsonable'

class City < JSONable

	@id
	@name
	@url #should this be here?

	def initialize
		@id = "14946"
		@name = "Almagro"
		@url = 'almagro.olx.com.ar'
	end

end