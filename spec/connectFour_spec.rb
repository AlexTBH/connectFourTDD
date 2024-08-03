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
    it "creates array for 7 columns" do
      newBoard = Board.new
      newBoard.board_columns
      expect(newBoard.columns.length).to eql(7)
    end
  end
end
