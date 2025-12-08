{
    module_name: "raindrops",
    generate_test: (case) -> "
    result = raindrops #{case.input.number}
    assert.are.same result, '#{case.expected}'"
}
