
class Computer

attr_reader  :name, :comp_move

  MOVES = [:scissors, :paper, :rock]

  def initialize
    @name = "Computer"
  end

  def computer_move
    @comp_move=  MOVES.sample
  end
end
