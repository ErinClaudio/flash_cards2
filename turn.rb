require './lib/card'

# I attempted to create this class with attr_reader but only received errors which is why the class is initialized in this manner
class Turn

  def initialize(string, card)
    @guess = string
    @card = card

  end

  def guess
    @guess
  end

  def card
    @card
  end

  def correct?
     @guess == @card.answer
  end

  def feedback
     if @guess == @card.answer
       print "Correct!"
    else
        print "Incorrect"
    end
  end
end
