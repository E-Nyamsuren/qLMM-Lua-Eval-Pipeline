-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
    local number_list = {}
    for number in numbers:gmatch("%S+") do
        table.insert(number_list, number)
    end
    table.sort(number_list)
    return table.concat(number_list, " ")
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