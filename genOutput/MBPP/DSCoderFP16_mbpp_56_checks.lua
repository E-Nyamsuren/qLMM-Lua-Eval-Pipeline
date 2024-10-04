-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)

  -- Check if the number is less than twice its reverse
  if n < reverse(n) - 1 then
    return false
  else
    return true
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())