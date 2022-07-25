Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

Each row must contain the digits 1-9 without repetition.
Each column must contain the digits 1-9 without repetition.
Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
Note:

A Sudoku board (partially filled) could be valid but is not necessarily solvable.
Only the filled cells need to be validated according to the mentioned rules.

Can you explain what do you mean by valid but not solvable?
what will be the empty boxes represented with?

def valid_sudoku(board):
  d={}
  rows=len(board)
  col=len(board[0])
  for i in range(rows-1):
    for j in range(col-1):
      if board[i][j] == '.':
        continue
      #checking all columns
      if (i,j) in d:
        if board[i][j] in d[(i,j)]:
            return False
        d[(i,j)].append(board[i][j])
      else:
        d[(i,j)]=board[i][j]
      #checking all rows
      if (j,i) in d:
        if board[j][i] in d[(j,i)]:
            return False
        d[(j,i)].append(board[j][j])
      else:
        d[(j,i)]=board[j][i]

  # checking the 3*3
    for i in range(0,row,3):
      for j in range(i,i+2):
        if board[i][j]

      
