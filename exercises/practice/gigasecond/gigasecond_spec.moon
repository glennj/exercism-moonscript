GigaSecond = require 'gigasecond'

describe 'gigasecond', ->
  it 'date only specification of time', ->
    result = GigaSecond.add '2011-04-25'
    assert.are.same '2043-01-01T01:46:40', result

  it 'second test for date only specification of time', ->
    result = GigaSecond.add '1977-06-13'
    assert.are.same '2009-02-19T01:46:40', result

  it 'third test for date only specification of time', ->
    result = GigaSecond.add '1959-07-19'
    assert.are.same '1991-03-27T01:46:40', result

  it 'full time specified', ->
    result = GigaSecond.add '2015-01-24T22:00:00'
    assert.are.same '2046-10-02T23:46:40', result

  it 'full time with day roll-over', ->
    result = GigaSecond.add '2015-01-24T23:59:59'
    assert.are.same '2046-10-03T01:46:39', result
