# frozen_string_literal: true

require_relative 'game.rb'
require_relative 'board.rb'
puts 'Welcome to Tic Tac Toe'
loop do
  puts 'Would you like to start a new game?(y/n)'
  start_game = gets.chomp.to_s.downcase
  puts ' '
  if start_game == 'y'
    puts 'Here we go!!'
    puts ' '
    game = Game.new
    game.create_players
    loop do
      round = 0
      loop do
        system 'clear'
        board.show
        puts ' '
        puts 'Choose one of the available cells:'
        board.choose
        puts ' '
        player_position = gets.chomp.to_sym
        break if check_win == true
      end
    end
  elsif start_game == 'n'
    system 'clear'
    puts 'Hope to see you again soon!'
    puts ' '
    break
  else
    system 'clear'
    puts 'Please insert (y) for YES or (n) for NO'
    puts ' '
  end
end
