class Deck
  attr_reader :deck

  def initialize
    @deck = []
    populate_deck
  end

  def populate_deck
    [:hearts, :diamonds, :spades, :clubs].each do |suit|
      ((2..10).to_a + [:jack, :queen, :king, :ace]).each do |number|
        @deck << Card.new(number, suit)
      end
    end
  end

  def draw(count)
    @deck.shuffle.pop(count)
  end

end