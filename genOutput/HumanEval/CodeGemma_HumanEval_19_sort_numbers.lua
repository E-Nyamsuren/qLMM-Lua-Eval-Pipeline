-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
  local numbers_table = {}
  local numbers_string = ""
  local numbers_table_length = 0
  local numbers_string_length = 0
  local numbers_string_length_minus_one = 0
  local numbers_string_length_minus_two = 0
  local numbers_string_length_minus_three = 0
  local numbers_string_length_minus_four = 0
  local numbers_string_length_minus_five = 0
  local numbers_string_length_minus_six = 0
  local numbers_string_length_minus_seven = 0
  local numbers_string_length_minus_eight = 0
  local numbers_string_length_minus_nine = 0
  local numbers_string_length_minus_ten = 0
  local numbers_string_length_minus_eleven = 0
  local numbers_string_length_minus_twelve = 0
  local numbers_string_length_minus_thirteen = 0
  local numbers_string_length_minus_fourteen = 0
  local numbers_string_length_minus_fifteen = 0
  local numbers_string_length_minus_sixteen = 0
  local numbers_string_length_minus_seventeen = 0
  local numbers_string_length_minus_eighteen = 0
  local numbers_string_length_minus_nineteen = 0
  local numbers_string_length_minus_twenty = 0
  local numbers_string_length_minus_twenty_one = 0
  local numbers_string_length_minus_twenty_two = 0
  local numbers_string_length_minus_twenty_three = 0
  local numbers_string_length_minus_twenty_four = 0
  local

lu = require('luaunit')

function test_humaneval()
local candidate = sort_numbers
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('three'), 'three')
    lu.assertEquals(candidate('three five nine'), 'three five nine')
    lu.assertEquals(candidate('five zero four seven nine eight'), 'zero four five seven eight nine')
    lu.assertEquals(candidate('six five four three two one zero'), 'zero one two three four five six')
end

os.exit(lu.LuaUnit.run())