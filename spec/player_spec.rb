require 'player'

describe Player do

  subject(:player) { described_class.new("Elia") }

  describe '#initiaize'  do
    it "initialized with the name" do
      expect(player.name).to eq "Elia"
    end
  end
  describe '#his_move' do
    it "makes a move" do
      expect(player.his_move(:paper)).to eq :paper
    end
  end
end
