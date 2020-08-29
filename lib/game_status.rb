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

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  elsif board.all?  {|positions| positions == "X" || "Y"} &&
    board.any? {|positions| positions != WIN_COMBINATIONS}
    return false

  elsif board.select {|positions| positions.is_a?(WIN_COMBINATIONS)}
end
end
end
end
