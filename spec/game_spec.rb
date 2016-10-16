require 'spec_helper'
require 'game'

describe Game do
  player_1 = Player.new("Dionysis")
  subject(:game) {described_class.new(player_1)}

  describe '#initialize' do
    it 'creates an array that holds the player' do
      expect(game.players).to eq [player_1]
    end

    it 'holds game choices in an array' do
      expect(game.choices).to eq ["Rock","Paper","Scissors"]
    end

    it 'creates a bot to compete against the user' do
      expect(game.bot.name).to eq "bot"
    end
  end

  context "holds player's attributes" do
    it "#first_player_name reads player_1's name " do
      expect(game.first_player_name).to eq "Dionysis"
    end
  end

  describe '#bot_name' do
    it 'read the bot\'s name' do
      expect(game.bot_name).to eq "bot"
    end
  end

  describe "#bot_choice" do
    it "returns a choice at random" do
      expect(["Rock","Paper","Scissors"]).to include game.bot_choice
    end
  end

  # describe '#p_choice' do
  #   it "sets player 1's choice" do
  #     expect(["Rock","Paper","Scissors"]).to include game.p_choice
  #   end
  # end

end
