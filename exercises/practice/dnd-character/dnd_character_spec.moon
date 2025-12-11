DnD = require 'dnd_character'

describe 'dnd-character', ->
  require 'dnd_assertions'
  
  describe 'ability modifier', ->
    it 'ability modifier for score 3 is -4', ->
      assert.are.equal -4, DnD.modifier 3

    pending 'ability modifier for score 4 is -3', ->
      assert.are.equal -3, DnD.modifier 4

    pending 'ability modifier for score 5 is -3', ->
      assert.are.equal -3, DnD.modifier 5

    pending 'ability modifier for score 6 is -2', ->
      assert.are.equal -2, DnD.modifier 6

    pending 'ability modifier for score 7 is -2', ->
      assert.are.equal -2, DnD.modifier 7

    pending 'ability modifier for score 8 is -1', ->
      assert.are.equal -1, DnD.modifier 8

    pending 'ability modifier for score 9 is -1', ->
      assert.are.equal -1, DnD.modifier 9

    pending 'ability modifier for score 10 is 0', ->
      assert.are.equal 0, DnD.modifier 10

    pending 'ability modifier for score 11 is 0', ->
      assert.are.equal 0, DnD.modifier 11

    pending 'ability modifier for score 12 is +1', ->
      assert.are.equal 1, DnD.modifier 12

    pending 'ability modifier for score 13 is +1', ->
      assert.are.equal 1, DnD.modifier 13

    pending 'ability modifier for score 14 is +2', ->
      assert.are.equal 2, DnD.modifier 14

    pending 'ability modifier for score 15 is +2', ->
      assert.are.equal 2, DnD.modifier 15

    pending 'ability modifier for score 16 is +3', ->
      assert.are.equal 3, DnD.modifier 16

    pending 'ability modifier for score 17 is +3', ->
      assert.are.equal 3, DnD.modifier 17

    pending 'ability modifier for score 18 is +4', ->
      assert.are.equal 4, DnD.modifier 18

  pending 'random ability is within range', ->
    for i = 1, 50
      score = DnD.ability!
      assert.between score, 3, 18

  pending 'random character is valid', ->
    character = DnD.character!
    assert.between character.strength, 3, 18
    assert.between character.dexterity, 3, 18
    assert.between character.constitution, 3, 18
    assert.between character.intelligence, 3, 18
    assert.between character.wisdom, 3, 18
    assert.between character.charisma, 3, 18
    assert.are.equal (10 + DnD.modifier character.constitution), character.hitpoints

  pending 'each ability is only calculated once', ->
    character = DnD.character!
    assert.are.equal character.strength, character.strength
    assert.are.equal character.dexterity, character.dexterity
    assert.are.equal character.constitution, character.constitution
    assert.are.equal character.intelligence, character.intelligence
    assert.are.equal character.wisdom, character.wisdom
    assert.are.equal character.charisma, character.charisma
    assert.are.equal character.hitpoints, character.hitpoints
