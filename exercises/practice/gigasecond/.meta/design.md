This is a tricky exercise due to essentially being unable to control the timezone when parsing moments using `os.time`.
I'm ending up with results differing by 1 hour, or by 5 hours, depending on my implementation.
If I run `busted` with `TZ=UTC busted`, then success.
But I can't control environment variables from within moonscript/lua.
By design, Lua provides `os.getenv` but no `os.setenv`

The Lua track only uses dates for this exercise, not datetimes.

Options:

- skip it entirely
- provide some datetime lua rock in the runner.
