class Ant
	attr_accessor :x_coords, :y_coords

	def initialize(group , hill_x, hill_y)
		@group = group

		@x_coords = hill_x
		@y_coords = hill_y

		@experience = 0
		@type = null
		@alive=false

	end

	def level_up()
		@experience = @experience + 1
	end

	def typeSet(ant_type)
		@type=ant_type
	end

	def move
		dim = rand 2 #0 for x_dimension
						 #1 for y_dimension

		vektor = rand 2 #0 for coords + 1
							 #1 for coords - 1

		if dim == 0 #x_dimension
			if vektor == 0
				if x_coords == 14 # cant move further above
					x_coords = x_coords - 1
				else
					x_coords = x_coords + 1
				end
			else #vektor == 1
				if x_coords == 0 # cant move further down
					x_coords = x_coords + 1
				else
					x_coords = x_coords - 1
				end
			end
		else # dim == 1 y_dimension
			if vektor == 0
				if y_coords == 14 # cant move further above
					y_coords = y_coords - 1
				else
					y_coords = y_coords + 1
				end
			else #vektor == 1
				if y_coords == 0 # cant move further above
					y_coords = y_coords + 1
				else
					y_coords = y_coords - 1
				end
			end
		end


	end #end move function
end #end class ant
