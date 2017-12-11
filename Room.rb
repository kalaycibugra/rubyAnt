require_relative 'Ant'
require_relative 'Cell'
class Room
def createAnt(type,group)
		ant = Ant.new()
		ant.type=type
		return ant
	end
end
