class Deck
  attr_reader :cards

  def initialize
    @deck = []
    populate_deck
  end

  def populate_deck
    [:hearts, :diamonds, :spades, :clubs].each do |suit|
      (2..14).each do |number|
        @deck << Card.new(number, suit)
      end
    end
  end

  def draw(count)
    @deck.shuffle.pop(count)
  end

  def return_card(card)
    @deck.push(card)
  end
end