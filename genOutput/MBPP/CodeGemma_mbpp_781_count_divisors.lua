-- Write a luathon function to check whether the count of divisors is even. https://www.w3resource.com/luathon-exercises/basic/luathon-basic-1-exercise-24.php
local function count_divisors(n)
  local count = 0
  for i = 1, n do
    if n % i == 0 then
      count = count + 1
    end
  end
  return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_divisors
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(100), false)
    lu.assertEquals(candidate(125), true)
end

os.exit(lu.LuaUnit.run())