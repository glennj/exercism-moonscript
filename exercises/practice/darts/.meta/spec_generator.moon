{
  module_name: 'darts',
  generate_test: (case) ->
    "    result = darts.score #{case.input.x}, #{case.input.y}
    assert.are.same #{case.expected}, result"
}
