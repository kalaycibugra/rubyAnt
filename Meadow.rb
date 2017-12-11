require 'singleton'
require_relative 'Cell'
class Meadow
	attr_accessor :grid
	include Singleton
	def initialize()
		@grid=Array.new(15){Array.new(15)}
		for j in 0..14
			for i in 0..14
				grid[j][i]=Cell.new()
			end
		end
	end

	def Simulation
		while true
			if anthill_count < 4
				queen=Queen.new
				queen.setAnthill.location.defineStrategy.buildAnthill
				anthill_count = anthill_count + 1
			end

			for j in 0..14
				for i in 0..14
					##--------------- generate food------------
					generatefood = rand 13
					if generatefood == 2 #lucky number to generate food
						foodCount = rand 5
						grid[j][i].food = grid[j][i].food + foodCount
					end
					##-----------------builder ant actions
					if grid[j][i].hill
						temp_hill = grid[j][i].hill
						for l in 0..temp_hill.ants.length
							if temp_hill.ants[l] == 'builder'

							end
					end
					##---------------- spawn Ants


					##----------------- ant actions --------------
					o = 0
					while o < grid[j][i].ants.length
						#move
						ant = grid[j][i].ants[o].clone_ant(self) #are you really
						ant.move
						x_c = ant.x_coords
						y_c = ant.y_coords
						grid[x_c][y_c].ants.push(ant)
						grid[j][i].ants.delete_at(o)


						if ant.type == 'forager'
						end
						if grid[x_c][y_c].ants.length >= 2 && ant.type == 'warrior'
							if grid[x_c][y_c].ants[length - 2] == 'warrior'
								#1v1
							else
								#warrior vs forager
							end
						end

						for r in 0...grid[x_c][y_c].ants.length
							if grid[x_c][y_c].ants[r] == 'warrior' && grid[x_c][y_c].hill
								#destroy hill?? 1/5
							end
						end
					end


				end
			end
		end
	end

	def disp
		for j in 0..14
			for z in 0..12*15
				print '_'
			end
			puts ""
			for i in 0..14
				check=false
				k=0
				while(k<12)

					if(k == 0)
						print '|'
					elsif (k==6 && grid[j][i].hill)
						print '#'
					elsif k>6&&grid[j][i].ants.length!=0&&!check
						for y in 0.. grid[j][i].ants.length-1
						 		print grid[j][i].ants[y]
						end
							check=true

						 	k = k + grid[j][i].ants.length-1
					else
						print ' '
					end
					k=k+1
				end
			end
			print "|"
			puts " "
		end
		for z in 0..12*15
			print '_'
		end
	end

end
