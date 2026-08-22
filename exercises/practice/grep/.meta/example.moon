List = require 'pl.List'

matches = (line, pattern, opts) ->
  line = line\lower! if opts.nocase
  match = line\match pattern
  (match and not opts.invert) or (opts.invert and not match)


grep_file = (filename, pattern, opts) ->
  result = {}
  file = io.open filename, "r"
  assert file, "can't open #{filename}"
  lineno = 0
  for line in file\lines!
    lineno += 1
    if matches line, pattern, opts
      if opts.filename_only
        file\close!
        return {filename}
      match = {line}
      table.insert match, 1, lineno if opts.lineno
      table.insert match, 1, filename if opts.multifile
      table.insert result, table.concat(match, ":")
  file\close!
  result


handle_options = (options, pattern, numfiles) ->
  opts_list = List options
  opts = {
    lineno:        opts_list\contains '-n'
    filename_only: opts_list\contains '-l'
    nocase:        opts_list\contains '-i'
    invert:        opts_list\contains '-v'
    whole_line:    opts_list\contains '-x'
    multifile:     numfiles > 1
  }
  pattern = pattern\lower! if opts.nocase
  pattern = "^#{pattern}$" if opts.whole_line
  opts, pattern

  
grep = (options, pattern, ...) ->
  filenames = {...}
  opts, pattern = handle_options options, pattern, #filenames
  result = List!
  for filename in *filenames
    result\extend grep_file filename, pattern, opts
  result

{ :grep }
