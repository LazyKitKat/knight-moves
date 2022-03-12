# knight-moves

This is a _Knight Moves_ exercise for TOP's Ruby course.

# Explanation

The **Knight class** contains init method that accepts two values, startpos (starting position) and a parent node which when first initialized is set to _nil_. It also containes two more methods:
- valid?
- next_moves

_valid?_ checks if the possible move is inside a board (index 0 to 7 for both values in the array) and next_moves calculates possible moves using MOVES constant (which contains an array of all possible moves for a Knight figure). When initialized, Knight will calculate all valid moves and put them in the array in its own _next_moves_ array wich will remove all impossible moves and return a clean array with all of the possibilites. 

The **Board** class has a method _knight_moves_ which will take a starting position and a destination. It will call on _tree_ method which will create a tree of values by initializing Knight class and iterating until Knight.start (current position of a figure) is equal to the destination.

It works by using a queue similar to one used in Binary tree level order traversal method.

Finally, _hist_ method will return an array of all children up to the starting point (starting with last node which has landed on its destination).
