require_relative 'Algorithm'
require_relative 'Meadow'
require_relative 'Queen'
class Queen
attr_accessor :x_coords, :y_coords
  def Initialize
    @anthill=nil
    @x_coords = nil
    @y_coords = nil
  end

 def buildAnthill

   @anthill

 end


 def location
    @x_coords =rand(15)
    @y_coords = rand 15
    @self
 end
 def setAnthill
  @anthill=Anthill.new
	 @self
 end

  def defineStrategy
      pick=rand(3)
      if(rand==0)
        @anthill.strategy=Aggressive.new
      elsif(rand==1)
        @anthill.strategy=Economy.new
      else
        @anthill.strategy=Growth.new
      end
      @self
  end
end
