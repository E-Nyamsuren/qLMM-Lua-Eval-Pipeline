-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
  if n == 0 then
    return 1
  elseif m == 0 then
    return 0
  else
    return eulerian_num(n - 1, m) + eulerian_num(n - 1, m - 1) * m
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())