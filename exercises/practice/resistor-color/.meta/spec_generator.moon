{
  module_name: 'ResistorColor',

  test_helpers: "
  tables_equal = (t1, t2) ->
    return false if #t1 != #t2
    for i = 1, #t1
      return false if t1[i] != t2[i]
    return true
"

  generate_test: (case, level) ->
    local lines
    if case.property == "colorCode"
      lines = {
        "result = ResistorColor.color_code '#{case.input.color}'",
        "assert.are.same #{case.expected}, result"
      }
    else
      lines = {
        "result = ResistorColor.colors!",
        "expected = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}"
        "assert.is_true tables_equal(expected, result)"
      }

    lines = [string.rep('  ', level) .. line for line in *lines]
    table.concat lines, '\n'
}


