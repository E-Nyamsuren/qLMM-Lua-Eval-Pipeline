-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
  local num_map = {
    ['zero'] = 0,
    ['one'] = 1,
    ['two'] = 2,
    ['three'] = 3,
    ['four'] = 4,
    ['five'] = 5,
    ['six'] = 6,
    ['seven'] = 7,
    ['eight'] = 8,
    ['nine'] = 9
  }
  local num_list = {}
  for word in numbers:gmatch("%S+") do
    table.insert(num_list, num_map[word])
  end
  table.sort(num_list)
  local sorted_numbers = ''
  for _, num in ipairs(num_list) do
    for word, value in pairs(num_map) do
      if value == num then
        sorted_numbers = sorted_numbers .. ' ' .. word
      end
    end
  end
  return sorted_numbers:sub(2)
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