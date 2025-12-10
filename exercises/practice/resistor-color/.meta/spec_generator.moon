{
  module_name: 'ResistorColor',

  generate_test: (case, level) ->
    local lines
    if case.property == "colorCode"
      lines = {
        "result = ResistorColor.color_code '#{case.input.color}'",
        "assert.are.same #{case.expected}, result"
      }
    else
      lines = {
        "expected = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}"
        "result = ResistorColor.colors!",
        "assert.are.same expected, result"
      }

    lines = [string.rep('  ', level) .. line for line in *lines]
    table.concat lines, '\n'
}


