class Player
  attr_reader :name, :lives

  def initialize(name)
  @name = name
  @lives = 3
  end

  def lose_life 
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def ask_question
    question = Question.new

    question.question_prompt(name)
    print '> '

    sum = gets.chomp

    if question.check_answer(sum.to_i)
      puts "Yes! Correct answer."
    else
      puts "Oh no...you lost a life."
      lose_life
    end
  end
      
end

