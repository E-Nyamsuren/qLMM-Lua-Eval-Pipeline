-- Write a function to get the frequency of all the elements in a table, returned as a table.
local function freq_count(list1)
  local freq = {}
  for _, v in ipairs(list1) do
    freq[v] = (freq[v] or 0) + 1
  end
  return freq
end

lu = require('luaunit')

function test_humaneval()
local candidate = freq_count
    lu.assertEquals(candidate({10, 10, 10, 10, 20, 20, 20, 20, 40, 40, 50, 50, 30}), {[10] = 4, [20] = 4, [40] = 2, [50] = 2, [30] = 1})
    lu.assertEquals(candidate({1, 2, 3, 4, 3, 2, 4, 1, 3, 1, 4}), {[1] = 3, [2] = 2, [3] = 3, [4] = 3})
    lu.assertEquals(candidate({5, 6, 7, 4, 9, 10, 4, 5, 6, 7, 9, 5}), {[10] = 1, [5] = 3, [6] = 2, [7] = 2, [4] = 2, [9] = 2})
end

os.exit(lu.LuaUnit.run())