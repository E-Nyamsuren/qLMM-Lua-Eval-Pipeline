-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
  local num_string = tostring(num)
  local num_length = #num_string
  local num_half = math.ceil(num_length / 2)
  local num_half_string = num_string:sub(1, num_half)
  local num_half_reversed = num_half_string:reverse()
  local num_half_length = #num_half_string
  local num_half_length_minus_one = num_half_length - 1
  local num_half_length_minus_two = num_half_length - 2
  local num_half_length_minus_three = num_half_length - 3
  local num_half_length_minus_four = num_half_length - 4
  local num_half_length_minus_five = num_half_length - 5
  local num_half_length_minus_six = num_half_length - 6
  local num_half_length_minus_seven = num_half_length - 7
  local num_half_length_minus_eight = num_half_length - 8
  local num_half_length_minus_nine = num_half_length - 9
  local num_half_length_minus_ten = num_half_length - 10
  local num_half_length_minus_eleven = num_half_length - 11
  local num_half_length_minus_twelve = num_half_length - 12
  local num_half_length_minus_thirteen = num_half_length - 13
  local num_half_length_minus_fourteen = num_half_length - 14
  local num_half_length_minus_fifteen = num_half_length - 15
  local num_half_length_minus_sixteen = num_half_length - 16
  local num_half_length_minus_seventeen = num_half_length - 17
  local num_half_length_minus_eighteen = num_

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())