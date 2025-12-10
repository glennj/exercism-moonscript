ResistorColor = require 'resistor_color'

describe 'resistor-color', ->

  tables_equal = (t1, t2) ->
    return false if #t1 != #t2
    for i = 1, #t1
      return false if t1[i] != t2[i]
    return true

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
    result = ResistorColor.colors!
    expected = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}
    assert.is_true tables_equal(expected, result)
