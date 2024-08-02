require './lib/connectFour'

describe Game do

  describe "#initialize" do
    it "creates player one and player two" do
      newGame = Game.new("Alex", "bajs")
      expect(newGame.player_one.name).to eql("Alex")
    end
  end

end

describe Board do
  describe "#new_board" do
    it "creates an array with 42 elements" do
      newBoard = Board.new
      expect(newBoard.board.count).to eql(42)
    end
  end

end
