
class Board
  @@board = { a1: 'X', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' }


  def show
    puts '  a b c'
    puts "1|#{@@board[:a1]}|#{@@board[:a2]}|#{@@board[:a3]}|"
    puts "2|#{@@board[:b1]}|#{@@board[:b2]}|#{@@board[:b3]}|"
    puts "3|#{@@board[:c1]}|#{@@board[:c2]}|#{@@board[:c3]}|"
  end

  def choose
    freecells = @@board.select { |_k, v| v == ' ' }
    freecells.keys
  end

  def check_position_player1
    
    if @@board[player_position].include?(' ')
      update_player1
    else
      system 'clear'
      show
      puts 'Please enter any of these coordenates in letter + number format. Ex: a1'
      puts choose
    end
  end

  def update_player1
    player_position = gets.chomp.to_sym
    @@board[player_position] = 'X'
  end

  def update_player2
    player_position = gets.chomp.to_sym
    @@board[player_position] = 'O'
  end

end

board = Board.new
board.show
board.choose
board.check_position_player1
