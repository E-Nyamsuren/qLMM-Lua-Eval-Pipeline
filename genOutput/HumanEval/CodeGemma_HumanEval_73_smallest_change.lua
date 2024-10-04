-- Given a table arr of integers, find the minimum number of elements that
-- need to be changed to make the table palindromic. A palindromic table is a table that
-- is read the same backwards and forwards. In one change, you can change one element to any other element.
-- For example:
-- >>> smallest_change({1, 2, 3, 5, 4, 7, 9, 6})
-- 4
-- >>> smallest_change({1, 2, 3, 4, 3, 2, 2})
-- 1
-- >>> smallest_change({1, 2, 3, 2, 1})
-- 0
local function smallest_change(arr)
  local arr_size = #arr
  local arr_mid = math.ceil(arr_size / 2)
  local arr_half = math.floor(arr_size / 2)
  local arr_half_plus_one = math.ceil(arr_size / 2)
  local arr_half_minus_one = math.floor(arr_size / 2)
  local arr_half_minus_two = math.floor(arr_size / 2) - 1
  local arr_half_plus_two = math.ceil(arr_size / 2) + 1
  local arr_half_plus_three = math.ceil(arr_size / 2) + 2
  local arr_half_minus_three = math.floor(arr_size / 2) - 3
  local arr_half_minus_four = math.floor(arr_size / 2) - 4
  local arr_half_plus_four = math.ceil(arr_size / 2) + 4
  local arr_half_minus_five = math.floor(arr_size / 2) - 5
  local arr_half_plus_five = math.ceil(arr_size / 2) + 5
  local arr_half_minus_six = math.floor(arr_size / 2) - 6
  local arr_half_plus_six = math.ceil(arr_size / 2) + 6
  local arr_half

lu = require('luaunit')

function test_humaneval()
local candidate = smallest_change
    lu.assertEquals(candidate({1, 2, 3, 5, 4, 7, 9, 6}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 3, 2, 2}), 1)
    lu.assertEquals(candidate({1, 4, 2}), 1)
    lu.assertEquals(candidate({1, 4, 4, 2}), 1)
    lu.assertEquals(candidate({1, 2, 3, 2, 1}), 0)
    lu.assertEquals(candidate({3, 1, 1, 3}), 0)
    lu.assertEquals(candidate({1}), 0)
    lu.assertEquals(candidate({0, 1}), 1)
end

os.exit(lu.LuaUnit.run())