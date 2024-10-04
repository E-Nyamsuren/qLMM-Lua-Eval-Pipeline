-- Input is a space-delimited string of numberals from 'zero' to 'nine'.
-- Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
-- Return the string with numbers sorted from smallest to largest
-- >>> sort_numbers('three one five')
-- 'one three five'
local function sort_numbers(numbers)
	local num_table = {}
	for num in string.gmatch(numbers, "%d") do
		table.insert(num_table, num)
	end
	table.sort(num_table)
	local sorted_numbers = ""
	for i, num in ipairs(num_table) do
		sorted_numbers = sorted_numbers .. num
		if i ~= #num_table then
			sorted_numbers = sorted_numbers .. " "
		end
	end
	return sorted_numbers
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