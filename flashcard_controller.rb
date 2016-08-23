require_relative 'flashcards'
require_relative 'flashcard_parser'

class FlashcardController

  attr_reader :file

  def initialize(file)
    @file = file
  end

  def ask_questions
    hash = Flashcards.new.clean_card(file)
    @correct_responses = []
    @all_responses = []

    hash.each_pair do |key, value|
      puts key
      user_input = $stdin.gets.chomp
        if value == user_input.downcase
          puts "Correct!"
          @correct_responses << "Correct"
          @all_responses << "Correct"
        else
          puts "Wrong!"
          @all_responses << "Wrong"
        end
    end
    puts score
  end

  def score
    number_of_questions = @all_responses.length

    puts "You got #{@correct_responses.length} questions correct out of #{number_of_questions}!"
  end

end

