-- Check if in given table of numbers, are any two numbers closer to each other than
-- given threshold.
-- >>> has_close_elements({1.0, 2.0, 3.0}, 0.5)
-- false
-- >>> has_close_elements({1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3)
-- true
local function has_close_elements(numbers, threshold)
  for i = 1, #numbers do
    for j = i + 1, #numbers do
      if numbers[i] - numbers[j] < threshold then
        return true
      end
    end
  end
  return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = has_close_elements
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.3), true)
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.05), false)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.95), true)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.8), false)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.1), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 1.0), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 0.5), false)
end

os.exit(lu.LuaUnit.run())