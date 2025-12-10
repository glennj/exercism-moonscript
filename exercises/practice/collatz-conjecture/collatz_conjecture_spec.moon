CollatzConjecture = require 'collatz_conjecture'

describe 'collatz-conjecture', ->
  it 'zero steps for one', ->
    result = CollatzConjecture.steps 1
    assert.are.same 0, result

  it 'divide if even', ->
    result = CollatzConjecture.steps 16
    assert.are.same 4, result

  it 'even and odd steps', ->
    result = CollatzConjecture.steps 12
    assert.are.same 9, result

  it 'large number of even and odd steps', ->
    result = CollatzConjecture.steps 1000000
    assert.are.same 152, result

  it 'zero is an error', ->
    f = -> CollatzConjecture.steps 0
    assert.has.errors f, 'Only positive integers are allowed'

  it 'negative value is an error', ->
    f = -> CollatzConjecture.steps -15
    assert.has.errors f, 'Only positive integers are allowed'
