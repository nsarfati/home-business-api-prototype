require './models/jsonable'

class Country < JSONable

	@id
	@name
	@shortName
	@url #not sure if it should be here
	@language # should we include 

	# a resource to request the other available langs?
	# are there any?

	# should be removed
	@thousandSeparator
	@decimalSeparator

	def initialize
		@id = "1"
		@name = "Argentina"
		@shortName = "AR"
		@url = 'www.olx.com.ar'
		@language = "2"
	end



end