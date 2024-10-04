-- Write a function to sum the length of the names of a given table of names after removing the names that start with a lowercase letter.
local function sample_nam(sample_names)
	local sum = 0
	for i, name in ipairs(sample_names) do
		if name:sub(1,1):upper() == name:sub(1,1) then
			sum = sum + name:len()
		end
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sample_nam
    lu.assertEquals(candidate({'sally', 'Dylan', 'rebecca', 'Diana', 'Joanne', 'keith'}), 16)
    lu.assertEquals(candidate({'php', 'res', 'Python', 'abcd', 'Java', 'aaa'}), 10)
    lu.assertEquals(candidate({'abcd', 'Python', 'abba', 'aba'}), 6)
end

os.exit(lu.LuaUnit.run())