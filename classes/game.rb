require "./player.rb"
require "./turn.rb"

puts "Enter name for Player 1:"
player_1 = gets.chomp
puts "Enter name for Player 2:"
player_2 = gets.chomp

player_1 = Player.new(player_1, 1)
player_2 = Player.new(player_2, 2)

current_turn_order = 2

while player_1.lives != 0 && player_2.lives != 0 do
  current_player = (current_turn_order % 2 == 0) ? player_1 : player_2
  play_this_turn = Turn.new(current_player)
  play_this_turn.current_turn
  current_turn_order += 1
  puts "#{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3"
end


if (player_1.lives == 0)
  puts "#{player_2.name} wins with #{player_2.lives}/3 lives still remaining."
elsif (player_2.lives == 0)
  puts "#{player_1.name} wins with #{player_1.lives}/3 lives still remaining."
end
puts "---GAME OVER---"
puts "Good bye!"
