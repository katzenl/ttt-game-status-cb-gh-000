# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.select do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[3]

    if position_taken?(board, win_index_1)
      position_1 = board[win_index_1]
      if position_1 == board[win_index_2] && position_1 == board[win_index_3]
        true
      else
        false
      end
    end
  end
end
