class Hand
  attr_reader :cards, :cards_hash

  def initialize(cards)
    @cards = cards
    @number_array = self.cards.map { |card| card.number }
    @cards_hash = cards_h
  end

  def cards_h
    cards_hash = Hash.new(0)
    @number_array.each do |card|
      cards_hash[card] += 1
    end
    cards_hash
  end

  def trade_in_cards(count)
  end

  def best
    return 8 if straight_flush?
    return 7 if four_of_a_kind?
    return 6 if full_house?
    return 5 if flush?
    return 4 if straight?
    return 3 if three_of_a_kind?
    return 2 if two_pair?
    return 1 if one_pair?
    return 0
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    count_duplicates.include?(4)
  end

  def flush?
    self.cards.all? {|card| card.suit == self.cards.first.suit }
  end

  def straight?
    (@number_array.sort.last - @number_array.sort.first == 4) && @number_array.uniq.length == 5
  end

  def three_of_a_kind?
    count_duplicates.include?(3)
  end

  def two_pair?
    count_duplicates == [2,2]
  end

  def full_house?
    count_duplicates.sort == [2,3]
  end

  def one_pair?
    count_duplicates == [2]
  end

  def high_card
    @number_array.sort.last
  end

  def count_duplicates
    result = []
    duplicates = @number_array.select { |card| @number_array.count(card) != 1 }
    uniques = duplicates.uniq
    uniques.each do |num|
      result << @number_array.count(num)
    end

    result
  end
end