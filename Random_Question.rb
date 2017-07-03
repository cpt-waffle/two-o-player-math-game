class Random_Question
require './MathGame.rb'

  attr_reader :ans

  def initialize()
    @num1 = MathGame::DEFAULT
    @num2 = MathGame::DEFAULT
    @ans  = MathGame::DEFAULT
    @question = ""
  end

  def generate_question()
    @num1 = rand(MathGame::DEFAULT_START_VALUE..MathGame::DEFAULT_END_VALUE)
    @num2 = rand(MathGame::DEFAULT_START_VALUE..MathGame::DEFAULT_END_VALUE)
    temp = rand(MathGame::DEFAULT_START_VALUE..3)

    if temp == 1
      self.plus()
    elsif temp == 2
      self.minus()
    else
      self.multiply()
    end

  end


  def plus()
    @ans = @num1 + @num2
    @question = "plus"
  end

  def minus()
    @ans = @num1 - @num2
    @question = "minus"
  end

  def multiply()
    @ans = @num1 * @num2
    @question = "multiply"
  end

  def to_string(id)
    puts "Player #{id}: What does #{@num1} #{@question} #{@num2} equal?"
  end

end