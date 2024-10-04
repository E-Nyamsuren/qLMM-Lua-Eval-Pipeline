-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
  local i = 1
  while true do
    local x = i * (3 * i - 2)
    if x == n then
      return true
    elseif x > n then
      return false
    end
    i = i + 1
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())