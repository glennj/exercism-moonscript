TwoFer = require 'two-fer'

describe 'two-fer', ->
  it 'no name given', ->
    assert.equal 'One for you, one for me.', TwoFer.two_fer!

  it 'a name given', ->
    assert.equal 'One for Alice, one for me.', TwoFer.two_fer 'Alice'

  it 'another name given', ->
    assert.equal 'One for Bob, one for me.', TwoFer.two_fer 'Bob'
