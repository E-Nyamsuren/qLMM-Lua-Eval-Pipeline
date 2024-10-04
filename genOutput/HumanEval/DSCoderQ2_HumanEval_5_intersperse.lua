-- Insert a number 'delimeter' between every two consecutive elements of input table `numbers'
-- >>> intersperse({}, 4)
-- {}
-- >>> intersperse({1, 2, 3}, 4)
-- {1, 4, 2, 4, 3}
local function intersperse(numbers, delimeter)
  local result = {}
  for i = 1, #numbers do
    result[#result + 1] = numbers[i]
    if i < #numbers then
      result[#result + 1] = delimeter
    end
 

lu = require('luaunit')

function test_humaneval()
local candidate = intersperse
    lu.assertEquals(candidate({}, 7), {})
    lu.assertEquals(candidate({5, 6, 3, 2}, 8), {5, 8, 6, 8, 3, 8, 2})
    lu.assertEquals(candidate({2, 2, 2}, 2), {2, 2, 2, 2, 2})
end

os.exit(lu.LuaUnit.run())