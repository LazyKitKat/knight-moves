class Knight
    MOVES = [[1, 2], [2, 1], [-1, -2], [-2, -1], [1, -2], [-1, 2], [2, -1], [-2, 1]].freeze
    attr_reader :start
    attr_accessor :children, :parent
    
    def initialize(start, parent = nil)
        @start = start
        @parent = parent
        @children = []
    end

    def move_valid?(position)
        if position < 0 or position > 7
            return false
        end
        true
    end

    def next_moves
        next_moves = MOVES.map do |move|
            move.each_with_index.map do |num, i| 
                next if !move_valid?(num + @start[i])
                num + @start[i] 
            end
        end
        next_moves.delete_if { |move| move.include?(nil) }
    end
end