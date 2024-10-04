-- Write a function to find the n'th star number.
local function find_star_num(n)
  local i = 1
  local star_num = 1
  while i < n do
    star_num = star_num + 2 * (i - 1)
    i = i + 1
  end
  return star_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())