-- Write a function to reverse each string in a given table of string values.
local function reverse_string_list(stringlist)
	local newlist = {}
	for i,v in ipairs(stringlist) do
		newlist[i] = string.reverse(v)
	end
	return newlist
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_string_list
    lu.assertEquals(candidate({'Red', 'Green', 'Blue', 'White', 'Black'}), {'deR', 'neerG', 'eulB', 'etihW', 'kcalB'})
    lu.assertEquals(candidate({'john', 'amal', 'joel', 'george'}), {'nhoj', 'lama', 'leoj', 'egroeg'})
    lu.assertEquals(candidate({'jack', 'john', 'mary'}), {'kcaj', 'nhoj', 'yram'})
end

os.exit(lu.LuaUnit.run())