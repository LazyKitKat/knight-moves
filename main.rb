require_relative 'lib/board'
require_relative 'lib/knight'

board = Board.new
knight = Knight.new([0,0])

p knight.next_moves

board.knight_moves([0, 0], [3, 3])
puts 

board.knight_moves([0, 0], [6, 5])
puts 