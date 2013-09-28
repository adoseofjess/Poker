class Game
  def initialize
    #later
  end

  def compare_hands(*hands)
    winning_hand = hands.first

    hands.each do |hand|
      winning_hand = (winning_hand.best > hand.best) ? winning_hand : hand
    end
  end
end