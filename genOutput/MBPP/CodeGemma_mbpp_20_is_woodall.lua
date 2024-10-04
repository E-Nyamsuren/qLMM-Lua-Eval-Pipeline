-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
  local s = tostring(x)
  local n = #s
  local i = 1
  while i <= n do
    local d = tonumber(s:sub(i, i))
    if d == 0 or d == n - i + 1 then
      i = i + 1
    else
      return false
    end
  end
  return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())