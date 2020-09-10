# frozen_string_literal: true

class Game
  def create_players
    print 'First player insert your name: '
    player1 = gets.chomp.upcase
    print 'Second player insert your name: '
    player2 = gets.chomp.upcase
    system 'clear'
    puts "#{player1} plays with X      #{player2} plays with O"
    puts " "
  end

  def who_plays
    
  end

  
end
