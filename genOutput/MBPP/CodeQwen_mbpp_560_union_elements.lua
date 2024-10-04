-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
  -- Combine the two tables
  local combined = {}
  for _, v in ipairs(test_tup1) do
    combined[v] = true
  end
  for _, v in ipairs(test_tup2) do
    combined[v] = true
  end
  
  -- Convert the combined table to a list and sort it
  local result = {}
  for k in pairs(combined) do
    table.insert(result, k)
  end
  table.sort(result)
  
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())