class Player
  attr_accessor :name, :number, :lives

  def initialize(name, number)
    @name = name
    @number = number
    @lives = 3
  end

  def wrong
    @lives -= 1
  end
end