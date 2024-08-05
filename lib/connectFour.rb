class Game 
  
  attr_reader :player_one, :player_two, :board
  
  
  def initialize(player_one_name= "player 1", player_two_name = "player 2")
    @player_one = Player.new(player_one_name, "X")
    @player_two = Player.new(player_two_name, "O")
    @board = Board.new
  end


  ## Work on this next
  def player_turn
    
    @board.mark_symbol
  end

  ## Work on this next

end

class Board
  attr_accessor :columns
  
  def initialize
    @columns = Array.new(42, "0")
  end

  def display_board
    rows = 7
    i = 0

    while i < @columns.length

      puts @columns[i, rows].join(' ')
      i += rows

    end
  end

  ## Work on this next
  def mark_symbol(@player_symbol)
    @columns[0] = "X"
  end

  ## Work on this next

end

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
    
end

x = Game.new
x.player_turn
x.board.display_board



