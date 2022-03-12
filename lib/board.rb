require_relative 'knight'

class Board
    def knight_moves(startpos, endpos)
        current_move = tree(startpos, endpos)
        history = hist(current_move, startpos)
        puts "You made it in #{history.length - 1} " + check_history(history)
        puts "Moves:"
        history.each { |move| puts move.to_s }
    end
    
    def check_history(arr)
        if arr.length < 3
            return "move"
        else
            return "moves"
        end
    end
    def tree(startpos, endpos)
        q = [Knight.new(startpos)]
        this_move = q.shift
        until this_move.start == endpos
            this_move.next_moves.each do |move|
                new_knight = Knight.new(move, this_move)
                this_move.children << new_knight
                q << new_knight
            end
            this_move = q.shift
        end
        this_move
    end

    def hist(current_move, startpos)
        arr = []
        until current_move.start == startpos
            arr << current_move.start
            current_move = current_move.parent
        end
        arr.reverse
    end
end