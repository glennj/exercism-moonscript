Grains = require 'grains'

describe 'grains', ->
  describe 'returns the number of grains on the square', ->
    it 'grains on square 1', ->
      result = Grains.square 1
      assert.are.equal 1, result

    pending 'grains on square 2', ->
      result = Grains.square 2
      assert.are.equal 2, result

    pending 'grains on square 3', ->
      result = Grains.square 3
      assert.are.equal 4, result

    pending 'grains on square 4', ->
      result = Grains.square 4
      assert.are.equal 8, result

    pending 'grains on square 16', ->
      result = Grains.square 16
      assert.are.equal 32768, result

    pending 'grains on square 32', ->
      result = Grains.square 32
      assert.are.equal 2147483648, result

    pending 'grains on square 64', ->
      result = Grains.square 64
      assert.are.equal 9223372036854775808, result

    pending 'square 0 is invalid', ->
      f = -> Grains.square 0
      assert.has.errors f, 'square must be between 1 and 64'

    pending 'negative square is invalid', ->
      f = -> Grains.square -1
      assert.has.errors f, 'square must be between 1 and 64'

    pending 'square greater than 64 is invalid', ->
      f = -> Grains.square 65
      assert.has.errors f, 'square must be between 1 and 64'

  pending 'returns the total number of grains on the board', ->
    assert.are.equal 18446744073709551615, Grains.total!
