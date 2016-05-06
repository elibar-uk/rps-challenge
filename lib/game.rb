require_relative 'computer'
require_relative 'player'

class Game
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }
  WIN =  {
              :rock => :paper,
              :paper => :scissors,
              :scissors => :rock
            }

attr_reader :player, :computer
  def initialize(computer, player)
    @player = player
    @computer = computer

  end
  def self.create(computer, player)
    @game = Game.new(computer, player)
  end

  def self.instance
    @game
  end

    def select_winner(move)
        other_move= @computer.computer_move
        if move == other_move
          :draw
        elsif WIN[move] == other_move
          :looser
        else
          :winner
        end
    end
end
