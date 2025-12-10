{
  module_name: 'ResistorColorDuo',
  generate_test: (case, level) ->
    input = ["'#{color}'" for color in *case.input.colors]
    lines = {
      "result = ResistorColorDuo.value #{table.concat input, ', '}",
      "assert.are.same #{case.expected}, result"
    }
    lines = [string.rep('  ', level) .. line for line in *lines]
    table.concat lines, '\n'
}
