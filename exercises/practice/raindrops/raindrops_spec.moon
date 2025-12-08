raindrops = require('raindrops')

describe 'raindrops', ->
  it 'the sound for 1 is 1', ->

    result = raindrops 1
    assert.are.same '1', result

  it 'the sound for 3 is Pling', ->

    result = raindrops 3
    assert.are.same 'Pling', result

  it 'the sound for 5 is Plang', ->

    result = raindrops 5
    assert.are.same 'Plang', result

  it 'the sound for 7 is Plong', ->

    result = raindrops 7
    assert.are.same 'Plong', result

  it 'the sound for 6 is Pling as it has a factor 3', ->

    result = raindrops 6
    assert.are.same 'Pling', result

  it '2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base', ->

    result = raindrops 8
    assert.are.same '8', result

  it 'the sound for 9 is Pling as it has a factor 3', ->

    result = raindrops 9
    assert.are.same 'Pling', result

  it 'the sound for 10 is Plang as it has a factor 5', ->

    result = raindrops 10
    assert.are.same 'Plang', result

  it 'the sound for 14 is Plong as it has a factor of 7', ->

    result = raindrops 14
    assert.are.same 'Plong', result

  it 'the sound for 15 is PlingPlang as it has factors 3 and 5', ->

    result = raindrops 15
    assert.are.same 'PlingPlang', result

  it 'the sound for 21 is PlingPlong as it has factors 3 and 7', ->

    result = raindrops 21
    assert.are.same 'PlingPlong', result

  it 'the sound for 25 is Plang as it has a factor 5', ->

    result = raindrops 25
    assert.are.same 'Plang', result

  it 'the sound for 27 is Pling as it has a factor 3', ->

    result = raindrops 27
    assert.are.same 'Pling', result

  it 'the sound for 35 is PlangPlong as it has factors 5 and 7', ->

    result = raindrops 35
    assert.are.same 'PlangPlong', result

  it 'the sound for 49 is Plong as it has a factor 7', ->

    result = raindrops 49
    assert.are.same 'Plong', result

  it 'the sound for 52 is 52', ->

    result = raindrops 52
    assert.are.same '52', result

  it 'the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7', ->

    result = raindrops 105
    assert.are.same 'PlingPlangPlong', result

  it 'the sound for 3125 is Plang as it has a factor 5', ->

    result = raindrops 3125
    assert.are.same 'Plang', result
