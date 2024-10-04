-- Write a function to locate the right insertion point for a specified value in sorted order.
local function right_insertion(a, x)
  local lo = 1
  local hi = #a
  while lo < hi do
    local mid = math.floor((lo + hi) / 2)
    if a[mid] <= x then
      lo = mid + 1
    else
      hi = mid
    end
  end
  return lo
end

lu = require('luaunit')

function test_humaneval()
local candidate = right_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())