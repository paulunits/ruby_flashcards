require_relative 'flashcards'
require_relative 'flashcard_parser'
require_relative 'flashcard_controller'

run_array = ARGV
program = FlashcardController.new(run_array[0])
program.ask_questions
