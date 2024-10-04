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
    local nums = {}
    for num in string.gmatch(numbers, "%S+") do
        table.insert(nums, num_map[num])
    end
    table.sort(nums)
    local sorted_numbers = ""
    for i, num in ipairs(nums) do
        sorted_numbers = sorted_numbers .. num_map[tostring(num)] .. " "
    end
    return string.sub(sorted_numbers, 1, -2)
end
print(sort_numbers("three one five"))  -- Expected output: 'one three five'
print(sort_numbers("nine eight seven"))  -- Expected output: 'seven eight nine'
print(sort_numbers("four two six"))  -- Expected output: 'two four six'
print(sort_numbers("zero three one"))  -- Expected output: 'zero one three'
print(sort_numbers("five nine three"))  -- Expected output: 'three five nine'
print(sort_numbers("one eight seven two"))  -- Expected output: 'one two seven eight'
print(sort_numbers("six four nine one"))  -- Expected output: 'one four six nine'
print(sort_numbers("five three nine two"))  -- Expected output: 'two three five nine'
print(sort_numbers("eight seven six four"))  

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