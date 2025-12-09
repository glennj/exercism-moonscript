{
  module_name: 'reverse',
  generate_test: (case, level=2) ->
    table.concat {
      string.rep("  ", level) .. "result = reverse \"#{case.input.value}\"",
      string.rep("  ", level) .. "assert.are.same \"#{case.expected}\", result"
    }, "\n"
}
