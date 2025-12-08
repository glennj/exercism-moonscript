{
  module_name: "hamming",
  generate_test: (case) -> 
    if type(case.expected) == "number"
      return "    result = hamming.distance '#{case.input.strand1}', '#{case.input.strand2}'
    assert.are.same #{case.expected}, result"

    else
      return "    f = -> hamming.distance '#{case.input.strand1}', '#{case.input.strand2}'
    assert.has.error f, '#{case.expected.error}'"
}
