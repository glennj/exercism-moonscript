{
  module_name: 'nucleotide_count',

  generate_test: (case, level) ->
    local lines
    if case.expected.error
      lines = {
        "f = -> nucleotide_count '#{case.input.strand}'",
        "assert.has.errors f, '#{case.expected.error}'"
      }
    else
      lines = {
        "expected = A: #{case.expected.A}, C: #{case.expected.C}, G: #{case.expected.G}, T: #{case.expected.T}"
        "result = nucleotide_count '#{case.input.strand}'",
        "assert.are.same expected, result"
      }

    lines = [string.rep('  ', level) .. line for line in *lines]
    table.concat lines, '\n'
}

