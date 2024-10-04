-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
  local num_words = {
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  }
  local num_values = {
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9
  }
  local words = {}
  for word in numbers:gmatch("%S+") do
    table.insert(words, word)
  end
  table.sort(words, function(a, b)
    return num_values[table.find(num_words, a, 1, true)] < num_values[table.find(num_words, b, 1, true)]
  end)
  return table.concat(words, ' ')
end

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