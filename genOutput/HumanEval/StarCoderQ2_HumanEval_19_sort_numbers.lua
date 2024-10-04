-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
	local num_table = { 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' }
	local sorted_numbers = {}
	for _, number in pairs(numbers:split(' ')) do
		table.insert(sorted_numbers, table.find(num_table, number))
	end
	table.sort(sorted_numbers)
	local sorted_numbers_str = ''
	for _, index in pairs(sorted_numbers) do
		sorted_numbers_str = sorted_numbers_str .. num_table[index] .. ' '
	end
	return sorted_numbers_str:trim()
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