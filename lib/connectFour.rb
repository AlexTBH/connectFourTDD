class Game 
  
  attr_reader :player_one, :player_two, :columns
  
  def initialize(player_one_name= "player 1", player_two_name = "player 2")
    @player_one = Player.new(player_one_name, "X")
    @player_two = Player.new(player_two_name, "O")
  end

  def mark_symbol
    
  end

end

class Board
  attr_reader :columns
  
  def initialize
    new_board
  end

  def new_board
    @columns = Array.new(42, 0)
  end

  def display_board
    rows = 7
    i = 0

    while i < @columns.length

      puts @columns[i, rows].join(' ')
      i += rows

    end
  end

end

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
    
end


