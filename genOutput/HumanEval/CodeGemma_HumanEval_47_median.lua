-- Return median of elements in the table l.
-- >>> median({3, 1, 2, 4, 5})
-- 3
-- >>> median({-10, 4, 6, 1000, 10, 20})
-- 15.0
local function median(l)
  local n = #l
  if n == 0 then
    error("empty table")
  elseif n == 1 then
    return l[1]
  elseif n == 2 then
    return (l[1] + l[2]) / 2
  else
    local sorted = {}
    for _, v in ipairs(l) do
      table.insert(sorted, v)
    end
    table.sort(sorted)
    local mid = math.ceil(n / 2)
    if n % 2 == 0 then
      return (sorted[mid] + sorted[mid + 1]) / 2
    else
      return sorted[mid]
    end
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = median
    lu.assertEquals(candidate({3, 1, 2, 4, 5}), 3)
    lu.assertEquals(candidate({-10, 4, 6, 1000, 10, 20}), 8.0)
    lu.assertEquals(candidate({5}), 5)
    lu.assertEquals(candidate({6, 5}), 5.5)
    lu.assertEquals(candidate({8, 1, 3, 9, 9, 2, 7}), 7)
end

os.exit(lu.LuaUnit.run())