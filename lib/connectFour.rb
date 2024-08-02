class Game 
  
  attr_reader :player_one, :player_two
  
  def initialize(player_one_name= "player 1", player_two_name = "player 2")
    @player_one = Player.new(player_one_name)
    @player_two = Player.new(player_two_name)
  end

end

class Board
  attr_reader :board
  
  def initialize
    @board = Array.new(42)
  end

end

class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end 

end 