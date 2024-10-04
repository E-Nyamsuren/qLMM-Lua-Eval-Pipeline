-- Write a luathon function to calculate the product of the unique numbers in a given table.
local function unique_product(list_data)
	local unique_numbers = {}
	for _, value in ipairs(list_data) do
		unique_numbers[#unique_numbers+1] = value
	end
	local product = 1
	for _, value in ipairs(unique_numbers) do
		product = product * value
	end
	return product
end


lu = require('luaunit')

function test_humaneval()
local candidate = unique_product
    lu.assertEquals(candidate({10, 20, 30, 40, 20, 50, 60, 40}), 720000000)
    lu.assertEquals(candidate({1, 2, 3, 1}), 6)
    lu.assertEquals(candidate({7, 8, 9, 0, 1, 1}), 0)
end

os.exit(lu.LuaUnit.run())