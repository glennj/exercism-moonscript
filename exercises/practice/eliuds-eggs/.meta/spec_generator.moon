{
  module_name: 'count_eggs',
  generate_test: (case) ->
    "    result = count_eggs #{case.input.number}
    assert.are.same #{case.expected}, result"
}
