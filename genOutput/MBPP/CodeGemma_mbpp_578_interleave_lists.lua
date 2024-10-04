-- Write a function to interleave 3 tables of the same length into a single flat table.
local function interleave_lists(list1, list2, list3)
  local result = {}
  local i = 1
  while i <= #list1 do
    result[#result + 1] = list1[i]
    result[#result + 1] = list2[i]
    result[#result + 1] = list3[i]
    i = i + 1
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = interleave_lists
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7}, {10, 20, 30, 40, 50, 60, 70}, {100, 200, 300, 400, 500, 600, 700}), {1, 10, 100, 2, 20, 200, 3, 30, 300, 4, 40, 400, 5, 50, 500, 6, 60, 600, 7, 70, 700})
    lu.assertEquals(candidate({10, 20}, {15, 2}, {5, 10}), {10, 15, 5, 20, 2, 10})
    lu.assertEquals(candidate({11, 44}, {10, 15}, {20, 5}), {11, 10, 20, 44, 15, 5})
end

os.exit(lu.LuaUnit.run())