require_relative 'flashcard_parser'

class Flashcards

  attr_accessor :card

  include FlashcardParser

  def initialize
    @card = nil
  end
end

