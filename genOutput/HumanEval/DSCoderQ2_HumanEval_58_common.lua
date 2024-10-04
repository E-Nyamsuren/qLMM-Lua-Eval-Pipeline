-- Return sorted unique common elements for two tables.
-- >>> common({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121})
-- {1, 5, 653}
-- >>> common({5, 3, 2, 8}, {3, 2})
-- {2, 3}
local function common(l1, l2)
  local l1_items = {}
  local l2_items = {}
  for e in pairs(l1) do l1_items[e] = true end
  for e in pairs(l2) do
    if l1_items[e] then
      l2_items[e] = true
    end
 
  return l2_items
end

lu = require('luaunit')

function test_humaneval()
local candidate = common
    lu.assertEquals(candidate({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121}), {1, 5, 653})
    lu.assertEquals(candidate({5, 3, 2, 8}, {3, 2}), {2, 3})
    lu.assertEquals(candidate({4, 3, 2, 8}, {3, 2, 4}), {2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 8}, {}), {})
end

os.exit(lu.LuaUnit.run())