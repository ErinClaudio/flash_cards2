
require './lib/card'


class Deck

  def initialize(card_array)
    @card_array = card_array

  end

  def card_array
    @card_array
  end

  def count
     card_array.count
  end
  # whichever catatgory is placed in the argument this
  # method needs to produce the card that is related

  def cards_in_category(cat)
      @card_array.each do |card|
        if card.category == cat.to_s
          return card
        end
      end
  end

end
card = Card.new("what is your name", "a lot", :postcamp)
bob = Deck.new([card, card, card])
bob.cards_in_category
