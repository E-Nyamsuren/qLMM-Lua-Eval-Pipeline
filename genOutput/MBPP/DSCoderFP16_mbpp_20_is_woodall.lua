-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)

  -- Check if x is a number
  if type(x) ~= "number" then
    return false
  end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())