module FlashcardParser

  attr_accessor :card

  def clean_card(file)
    questions = Array.new(parse_questions(file))
    answers = Array.new(parse_answers(file))
    card = {}

    questions.zip(answers) { |a, b| card[a] = b }
    @card = card
  end

  private
  def parse_questions(file)
    q_array = []
    items = File.open(file)
    items.each do |line|
      q_array << line.strip
    end

    i = 0
    new_q_array = []
    while i < q_array.length
      new_q_array << q_array.fetch(i)
      i += 3
    end
    new_q_array
  end

  def parse_answers(file)
    a_array = []
    items = File.open(file)
    items.each do |line|
      a_array << line.strip
    end

    i = 1
    new_a_array = []
    while i < a_array.length
      new_a_array << a_array.fetch(i)
      i += 3
    end
    new_a_array
  end
end
