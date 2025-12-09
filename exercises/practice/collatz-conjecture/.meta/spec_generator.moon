{
  module_name: 'CollatzConjecture',
  generate_test: (case) ->
    if type(case.expected) == 'number'
      "    result = CollatzConjecture.steps #{case.input.number}
    assert.are.same #{case.expected}, result"
    else
      "    f = -> CollatzConjecture.steps #{case.input.number}
    assert.has.errors f, '#{case.expected.error}'"
}
