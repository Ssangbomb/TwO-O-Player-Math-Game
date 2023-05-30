class Questions
  attr_reader :number1, :number2, :answer
  def initialize
    @number1 = rand(21)
    @number2 = rand(21)
    @answer = number1 + number2
  end
  def makequestion(player)
    puts "#{player}: what does #{number1} plus #{number2} equal?"
  end
end

# question1 = Question.new

# p question1.makequestion
# p question1.answer