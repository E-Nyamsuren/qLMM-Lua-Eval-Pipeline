-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
    local num_map = {
        zero = 0,
        one = 1,
        two = 2,
        three = 3,
        four = 4,
        five = 5,
        six = 6,
        seven = 7,
        eight = 8,
        nine = 9
    }
    local num_list = {}
    for num in string.gmatch(numbers, "%S+") do
        table.insert(num_list, num_map[num])
    end
    table.sort(num_list)
    local sorted_numbers = ""
    for i, num in ipairs(num_list) do
        sorted_numbers = sorted_numbers .. num_map[num] .. (i == #num_list and "" or " ")
    end
    return sorted_numbers
end
print(sort_numbers('three one five')) -- 'one three five'
print(sort_numbers('nine eight seven')) -- 'seven eight nine'
print(sort_numbers('zero four two')) -- 'zero two four'
print(sort_numbers('six three nine one')) -- 'one three six nine'
print(sort_numbers('five five five')) -- 'five five five'
print(sort_numbers('')) -- ''
print(sort_numbers('one one one one')) -- 'one one one one'
print(sort_numbers('eight seven six five four three two one')) -- 'one one one two three four five six seven eight'
print(sort_numbers('nine eight seven six five four three two zero')) -- 'zero two three four five six seven eight nine'
print(sort_numbers('nine eight seven six five four three two zero one')) --

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