-- Write a luathon function to find the sum of even numbers at even positions of a table.
local function sum_even_and_even_index(arr)
  local sum = 0
  for i, v in ipairs(arr) do
    if i % 2 == 0 then
      sum = sum + v
    end
  end
  return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_even_and_even_index
    lu.assertEquals(candidate({5, 6, 12, 1, 18, 8}), 30)
    lu.assertEquals(candidate({3, 20, 17, 9, 2, 10, 18, 13, 6, 18}), 26)
    lu.assertEquals(candidate({5, 6, 12, 1}), 12)
end

os.exit(lu.LuaUnit.run())