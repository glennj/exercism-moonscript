ResistorColor = require 'resistor_color'

describe 'resistor-color', ->
  describe 'color codes', ->
    it 'Black', ->
      result = ResistorColor.color_code 'black'
      assert.are.same 0, result

    it 'White', ->
      result = ResistorColor.color_code 'white'
      assert.are.same 9, result

    it 'Orange', ->
      result = ResistorColor.color_code 'orange'
      assert.are.same 3, result

  it 'Colors', ->
    expected = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}
    result = ResistorColor.colors!
    assert.are.same expected, result
