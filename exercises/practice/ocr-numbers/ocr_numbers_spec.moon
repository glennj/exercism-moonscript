import convert from require 'ocr_numbers'

describe 'ocr-numbers:', ->
  it 'Recognizes 0', ->
    rows = {
      ' _ ',
      '| |',
      '|_|',
      '   ',
    }
    assert.are.equal '0', convert rows

  pending 'Recognizes 1', ->
    rows = {
      '   ',
      '  |',
      '  |',
      '   ',
    }
    assert.are.equal '1', convert rows

  pending 'Unreadable but correctly sized inputs return ?', ->
    rows = {
      '   ',
      '  _',
      '  |',
      '   ',
    }
    assert.are.equal '?', convert rows

  pending 'Input with a number of lines that is not a multiple of four raises an error', ->
    rows = {
      ' _ ',
      '| |',
      '   ',
    }
    f = -> convert rows
    assert.has.errors f, 'Number of input lines is not a multiple of four'

  pending 'Input with a number of columns that is not a multiple of three raises an error', ->
    rows = {
      '    ',
      '   |',
      '   |',
      '    ',
    }
    f = -> convert rows
    assert.has.errors f, 'Number of input columns is not a multiple of three'

  pending 'Recognizes 110101100', ->
    rows = {
      '       _     _        _  _ ',
      '  |  || |  || |  |  || || |',
      '  |  ||_|  ||_|  |  ||_||_|',
      '                           ',
    }
    assert.are.equal '110101100', convert rows

  pending 'Garbled numbers in a string are replaced with ?', ->
    rows = {
      '       _     _           _ ',
      '  |  || |  || |     || || |',
      '  |  | _|  ||_|  |  ||_||_|',
      '                           ',
    }
    assert.are.equal '11?10?1?0', convert rows

  pending 'Recognizes 2', ->
    rows = {
      ' _ ',
      ' _|',
      '|_ ',
      '   ',
    }
    assert.are.equal '2', convert rows

  pending 'Recognizes 3', ->
    rows = {
      ' _ ',
      ' _|',
      ' _|',
      '   ',
    }
    assert.are.equal '3', convert rows

  pending 'Recognizes 4', ->
    rows = {
      '   ',
      '|_|',
      '  |',
      '   ',
    }
    assert.are.equal '4', convert rows

  pending 'Recognizes 5', ->
    rows = {
      ' _ ',
      '|_ ',
      ' _|',
      '   ',
    }
    assert.are.equal '5', convert rows

  pending 'Recognizes 6', ->
    rows = {
      ' _ ',
      '|_ ',
      '|_|',
      '   ',
    }
    assert.are.equal '6', convert rows

  pending 'Recognizes 7', ->
    rows = {
      ' _ ',
      '  |',
      '  |',
      '   ',
    }
    assert.are.equal '7', convert rows

  pending 'Recognizes 8', ->
    rows = {
      ' _ ',
      '|_|',
      '|_|',
      '   ',
    }
    assert.are.equal '8', convert rows

  pending 'Recognizes 9', ->
    rows = {
      ' _ ',
      '|_|',
      ' _|',
      '   ',
    }
    assert.are.equal '9', convert rows

  pending 'Recognizes string of decimal numbers', ->
    rows = {
      '    _  _     _  _  _  _  _  _ ',
      '  | _| _||_||_ |_   ||_||_|| |',
      '  ||_  _|  | _||_|  ||_| _||_|',
      '                              ',
    }
    assert.are.equal '1234567890', convert rows

  pending 'Numbers separated by empty lines are recognized. Lines are joined by commas.', ->
    rows = {
      '    _  _ ',
      '  | _| _|',
      '  ||_  _|',
      '         ',
      '    _  _ ',
      '|_||_ |_ ',
      '  | _||_|',
      '         ',
      ' _  _  _ ',
      '  ||_||_|',
      '  ||_| _|',
      '         ',
    }
    assert.are.equal '123,456,789', convert rows

