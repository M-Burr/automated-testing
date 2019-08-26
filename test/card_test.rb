require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      testing_nums = Card.new(2, :diamonds)
      expect(testing_nums.to_s).must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      testing_suit = Card.new(11, :hearts)
      expect(testing_suit.to_s).must_equal "Jack of hearts"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      value_test = Card.new(4, :spades)
      expect(value_test.value).must_equal 4

      value_test2 = Card.new(10, :hearts)
      expect(value_test2.value).must_equal 10
    end

    it "Can retrieve the value of the card using a `.suit`." do
      suit_test = Card.new(4, :diamonds)
      expect(suit_test.suit).must_equal :diamonds

      suit_test2 = Card.new(12, :hearts)
      expect(suit_test2.suit).must_equal :hearts
    end
  end

end
