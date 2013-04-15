require './models/jsonable'

class User < JSONable

	@id
	@name

	def initialize
		 @id = "5678" 
		 @name = "ambullneo"
	end

end