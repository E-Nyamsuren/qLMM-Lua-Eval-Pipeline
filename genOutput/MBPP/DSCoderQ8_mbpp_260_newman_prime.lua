-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
  local primes = {2, 3}
  local candidate = 5
  while #primes < n do
    local is_prime = true
    for i = 1, #primes do
      if candidate % primes[i] == 0 then
        is_prime = false
        break
      end
    end
    if is_prime then
      table.insert(primes, candidate)
    end
    candidate = candidate + 2
  end
  return primes[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())