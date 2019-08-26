
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    values = (1..13).to_a
    suits = [:hearts, :spades, :clubs, :diamonds]
    if values.include?(value) == false || suits.include?(suit) == false
      raise ArgumentError.new("Invalid card")
    end

    @value = value
    @suit = suit
  end

  def to_s
    special_values = {
      "King" => 13,
      "Queen" => 12,
      "Jack" => 11,
      "Ace" => 10
    }

    special_values.each do |key, value|
      if value == @value 
        return "#{key} of #{suit.to_s}"
      end
    end

    if @value < 10
      return "#{@value} of #{suit.to_s}"
    end
  end

end
