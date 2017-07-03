class Random_Question

  attr_reader :ans

  def initialize()
    @num1 = 0
    @num2 = 0
    @ans  = 0
    @question = ""
  end

  def generate_question()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    temp = rand(1..3)

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