require_relative 'deck.rb'
require_relative 'card.rb'
require_relative 'hand.rb'
require_relative 'player.rb'
require_relative 'game.rb'
require 'rspec'

describe "Deck" do
  subject(:deck) { Deck.new }

  it "contains a full set of cards" do
    deck.cards.count.should == 52
  end
end

describe "Hand" do
  subject(:hand) { Hand.new }

  it ""

end

describe "Game" do
  subject(:game) { Game.new }


  let(:hand1) { Hand.new(Card.new(2, :diamonds), Card.new(2, :hearts), Card.new(13, :diamonds), Card.new(14, :spades), Card.new(12, :hearts)) }
  let(:hand2) { Hand.new(Card.new(2, :spades), Card.new(2, :clubs), Card.new(13, :clubs), Card.new(14, :hearts), Card.new(11, :spades)) }
  it "compares hands and returns the best hand" do
    game.compare_hands(hand1, hand2).should == hand1
  end
end
