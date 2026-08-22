List = require 'pl.List'

digits = {
  ' _ | ||_|   ': "0"
  '     |  |   ': "1"
  ' _  _||_    ': "2"
  ' _  _| _|   ': "3"
  '   |_|  |   ': "4"
  ' _ |_  _|   ': "5"
  ' _ |_ |_|   ': "6"
  ' _   |  |   ': "7"
  ' _ |_||_|   ': "8"
  ' _ |_| _|   ': "9"
}


toNumber = (row) ->
  chunks = [table.concat [line\sub(i, i+2) for line in *row] for i = 1, #row[1], 3]
  table.concat [digits[chunk] or "?" for chunk in *chunks]


convert = (rows) ->
  rows = List rows
  assert #rows % 4 == 0, "Number of input lines is not a multiple of four"
  assert #rows[1] % 3 == 0, "Number of input columns is not a multiple of three"

  numbers = [toNumber rows\slice(i, i+3) for i = 1, #rows, 4]
  table.concat numbers, ','


{ :convert }
