class Question
  attr_accessor :n1, :n2

  def initialize
    @n1 = rand(20)
    @n2 = rand(20)
  end

  def question
      @q = addition
      @a = n1 + n2
      return @q, @a
  end
  
  def addition
    "What is #{n1} + #{n2} = ???"
  end


end