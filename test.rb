class Board

    def initialize
        @@board = { a1: 'X', a2: ' ', a3: ' ', b1: ' ', b2: ' ', b3: ' ', c1: ' ', c2: ' ', c3: ' ' }
    end
    
    def free_pos
        puts 'choose a position:'
        puts @@board.keys
        puts ' '
        pos_chosen = gets.chomp.to_sym
        puts ' '
        puts pos_chosen
        puts ' '
        
        puts ' '
        
        if @@board[pos_chosen].include?(' ')
            @@board[pos_chosen] = 'X'
            puts ' '
            puts @@board[pos_chosen]
            puts ' '
            show
        else
            puts ' '
            puts 'please enter a coordinate'
        end
    end
  
    def show
        puts '  a b c'
        puts "1|#{@@board[:a1]}|#{@@board[:a2]}|#{@@board[:a3]}|"
        puts "2|#{@@board[:b1]}|#{@@board[:b2]}|#{@@board[:b3]}|"
        puts "3|#{@@board[:c1]}|#{@@board[:c2]}|#{@@board[:c3]}|"
        puts ' '
    end

end


board = Board.new

board.show
board.free_pos
