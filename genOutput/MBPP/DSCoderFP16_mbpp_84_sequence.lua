-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
  local sequence = {0, 1}
  for i = 2, n do
    sequence[i] = sequence[i - 1] + sequence[i - 2]
  end
  return sequence[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())