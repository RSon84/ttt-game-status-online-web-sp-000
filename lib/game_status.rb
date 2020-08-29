# Helper Method
0  | 1  | 2
-----------
3  | 4  | 5
-----------
6  | 7  | 8


def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8],
[0,4,8], [2,4,6],
[0,3,6], [1,4,7], [2,5,8]]

empty_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def won?(board)
WIN_COMBINATIONS.detect do |array|
  board[array[0]] == board[array[1]] &&
  board[array[1]] == board[array[2]] &&
  position_taken?(board, array[0])
end
end

def full?(board)
  board.all? {|positions| positions == "X" || positions == "O"}
  end


def draw?(board)
  full?(board) && !won?(board)
  end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if positions = won?(board)
  binding.pry
    board[positions.first]
  end
end
