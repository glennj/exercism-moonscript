Grains = require 'grains'

describe 'grains', ->
  describe 'returns the number of grains on the square', ->
    it 'grains on square 1', ->
      result = Grains.square 1
      assert.are.same 1, result

    it 'grains on square 2', ->
      result = Grains.square 2
      assert.are.same 2, result

    it 'grains on square 3', ->
      result = Grains.square 3
      assert.are.same 4, result

    it 'grains on square 4', ->
      result = Grains.square 4
      assert.are.same 8, result

    it 'grains on square 16', ->
      result = Grains.square 16
      assert.are.same 32768, result

    it 'grains on square 32', ->
      result = Grains.square 32
      assert.are.same 2147483648, result

    it 'grains on square 64', ->
      result = Grains.square 64
      assert.are.same 9223372036854775808, result

    it 'square 0 is invalid', ->
      f = -> Grains.square 0
      assert.has.errors f, 'square must be between 1 and 64'

    it 'negative square is invalid', ->
      f = -> Grains.square -1
      assert.has.errors f, 'square must be between 1 and 64'

    it 'square greater than 64 is invalid', ->
      f = -> Grains.square 65
      assert.has.errors f, 'square must be between 1 and 64'

  it 'returns the total number of grains on the board', ->
    assert.are.same 18446744073709551615, Grains.total!
