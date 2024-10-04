-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
    local words = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"}
    local numbers_map = {}
    for i, word in ipairs(words) do
        numbers_map[word] = i - 1
    end
    local sorted_numbers = {}
    for word in string.gmatch(numbers, "%S+") do
        table.insert(sorted_numbers, numbers_map[word])
    end
    table.sort(sorted_numbers)
    local result = ""
    for _, number in ipairs(sorted_numbers) do
        result = result .. words[number + 1] .. " "
    end
    return string.sub(result, 1, string.len(result) - 1)
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