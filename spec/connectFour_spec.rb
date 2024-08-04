require './lib/connectFour'

describe Game do

  describe "#initialize" do
    it "creates player one and player two" do
      newGame = Game.new("Alex", "bajs")
      expect(newGame.player_one.name).to eql("Alex")
    end
    
    it "creates symbols for the two players" do
      newGame = Game.new("Alex", "bajs")
      expect(newGame.player_one.symbol).to eql("X")
      expect(newGame.player_two.symbol).to eql("O")
    end
  end



end

describe Board do
  
  describe "#initialize" do
    it "creates array for 7 columns" do
      newBoard = Board.new
      
      expect(newBoard.columns.length).to eql(42)
    end
  end

  describe "mark_symbol" do
    it "marks an index on the columns array with a symbol" do
      newGame = Board.new
      newGame.mark_symbol
      expect(newGame.columns[0]).to eql("X")
    end
  end


end
