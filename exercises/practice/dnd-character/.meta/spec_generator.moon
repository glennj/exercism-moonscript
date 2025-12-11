{
  module_name: 'DnD',

  test_helpers: [[
  require 'dnd_assertions'
  ]]

  generate_test: (case, level) ->
    local lines

    switch case.property
      when 'modifier'
        lines = {
          "assert.are.equal #{case.expected}, DnD.modifier #{case.input.score}"
        }
      when 'ability'
        lines = {
          "for i = 1, 50",
          "  score = DnD.ability!",
          "  assert.between score, 3, 18"
        }
      when 'character'
        if case.description == "random character is valid"
          lines = {
            "character = DnD.character!",
            "assert.between character.strength, 3, 18",
            "assert.between character.dexterity, 3, 18",
            "assert.between character.constitution, 3, 18",
            "assert.between character.intelligence, 3, 18",
            "assert.between character.wisdom, 3, 18",
            "assert.between character.charisma, 3, 18",
            "assert.are.equal (10 + DnD.modifier character.constitution), character.hitpoints"
          }
        else
          lines = {
            "character = DnD.character!",
            "assert.are.equal character.strength, character.strength",
            "assert.are.equal character.dexterity, character.dexterity",
            "assert.are.equal character.constitution, character.constitution",
            "assert.are.equal character.intelligence, character.intelligence",
            "assert.are.equal character.wisdom, character.wisdom",
            "assert.are.equal character.charisma, character.charisma",
            "assert.are.equal character.hitpoints, character.hitpoints"
          }

    table.concat [indent line, level for line in *lines], '\n'
}
