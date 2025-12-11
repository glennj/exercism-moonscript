return {
  factors = function(n)
    local fs = { }
    local f = 2
    while f * f <= n do
      if n % f == 0 then
        n = n // f
        table.insert(fs, f)
      else
        f = f + 1
      end
    end
    if n > 1 then
      table.insert(fs, n)
    end
    return fs
  end
}
