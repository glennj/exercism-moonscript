{
  module_name: 'DifferenceOfSquares',
  generate_test: (case, level=2) ->
    snakify = (s) -> s\gsub("%f[A-Z].", (upper) -> "_#{upper\lower!}")
    lines = {
      "result = DifferenceOfSquares.#{snakify case.property} #{case.input.number}",
      "assert.are.same #{case.expected}, result"
    }
    for i, line in ipairs lines
      lines[i] = string.rep('  ', level) .. line

    table.concat lines, "\n"
}
