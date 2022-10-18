require "./question.rb"
require "./player.rb"

class Turn

  def initialize(player)
    @question = Question.new
    @player = player
  end

  def current_turn

    puts "---NEW TURN---"
    puts "Player #{@player.number}: #{@question.question[0]}"
    puts ""
    puts "Answer: "
    player_answer = gets.chomp

    if player_answer == @question.question[1].to_s
      puts "Player #{@player.number}: YES! You are correct."
    else
      @player.wrong
      puts "Player #{@player.number}: Seriously? No!"
      puts "#{@player.name} now has #{@player.lives} lives left."
    end
  end

end
