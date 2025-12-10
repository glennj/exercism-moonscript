{
  module_name: 'nucleotide_count',

  test_helpers: "
  tables_equal = (t1, t2) ->
    same_kv = (a, b) ->
      for k, v in pairs a
        return false if b[k] == nil or b[k] != v
      return true

    same_kv(t1, t2) and same_kv(t2, t1)
"

  generate_test: (case, level) ->
    local lines
    if case.expected.error
      lines = {
        "f = -> nucleotide_count '#{case.input.strand}'",
        "assert.has.errors f, '#{case.expected.error}'"
      }
    else
      lines = {
        "result = nucleotide_count '#{case.input.strand}'",
        "expected = A: #{case.expected.A}, C: #{case.expected.C}, G: #{case.expected.G}, T: #{case.expected.T}"
        "assert.is_true tables_equal(expected, result)"
      }

    lines = [string.rep('  ', level) .. line for line in *lines]
    table.concat lines, '\n'
}

