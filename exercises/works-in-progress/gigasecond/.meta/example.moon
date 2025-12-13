{
  add: (input) ->
    numbers = {}
    for n in input\gmatch("%d+")
      table.insert numbers, tonumber(n)

    parts = {
      year: numbers[1],
      month: numbers[2],
      day: numbers[3],
      hour: numbers[4] or 0,
      min: numbers[5] or 0,
      sec: numbers[6] or 0,
    }

    time = os.time(parts)
    time += 1e9

    os.date("%Y-%m-%dT%H:%M:%S", time)
}
