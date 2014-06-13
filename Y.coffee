Function::Y = (cache = {}) -> (a) =>
    return cache[a] if cache[a]?
    cache[a] =@((n) =>@Y(cache)(n))(a)

fib = ( (f) -> (n) ->
    return 0 if n is 0
    return 1 if n is 1
    f(n - 1) + f(n - 2)
).Y()

fib(42) # -> 267914296
