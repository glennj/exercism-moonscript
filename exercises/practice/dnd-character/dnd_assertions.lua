local assert = require('luassert.assert')
local say = require('say')

local function between(state, arguments)
  assert(#arguments == 3, 'expected three arguments to assert.between: value, min, max')

  local val = arguments[1]
  local min = arguments[2]
  local max = arguments[3]

  return val and min <= val and val <= max
end

say:set("assertion.between.positive", "Expected\n%s\nto be in the range [%s, %s]")
say:set("assertion.between.negative", "Expected\n%s\nnot to be in the range [%s, %s]")
assert:register("assertion", "between", between, 'assertion.between.positive', 'assertion.between.negative')
