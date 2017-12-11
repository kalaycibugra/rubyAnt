class Aggressive
	def createAnt(forager_count, builder_count, warrior_count, room, total_count)
		if builder_count == 0 and room < 15
			#spawn builder
		elsif
			forager_count >= 2 and room > total_count
			#spawn warrior
		else
		   #spawn forager
		end
	end
end

class Economy
	def createAnt(forager_count, builder_count, warrior_count,room)
    if builder_count > 3 or room > total_count
      #spawn foreger
    elsif foreger_count > 5 and room < total_count*0.75
      #spawn builder
    else
      #spawn warrior
    end


	end
end

class Growth
	def createAnt(forager_count, builder_count, warrior_count,room)
		if
	end
end
