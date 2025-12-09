{
  module_name: 'ArmstrongNumbers',
  generate_test: (case) ->
    "    result = ArmstrongNumbers.is_armstrong #{case.input.number}
    assert.are.same #{case.expected}, result"
}
