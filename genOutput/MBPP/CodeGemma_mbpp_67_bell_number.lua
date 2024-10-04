-- Write a function to find the number of ways to partition a set of Bell numbers.
local function bell_number(n)
  if n == 0 then
    return 1
  else
    local result = 0
    for k = 0, n do
      result = result + bell_number(k) * bell_number(n - k)
    end
    return result
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(10), 115975)
    lu.assertEquals(candidate(56), 6775685320645824322581483068371419745979053216268760300)
end

os.exit(lu.LuaUnit.run())