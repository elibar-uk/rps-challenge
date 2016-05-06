class Player
  attr_reader :name, :move, :player_choice

  def initialize(name)
    @name = name
    @player_choice = nil
  end
  def his_move(move)
    @move = move
  end
end
