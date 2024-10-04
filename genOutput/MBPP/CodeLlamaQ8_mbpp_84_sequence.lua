-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
  local a, b = 0, 1
  for i = 1, n do
    a, b = b, a + b
  end
  return a
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())