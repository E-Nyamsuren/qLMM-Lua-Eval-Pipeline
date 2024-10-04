-- Write a luathon function to calculate the product of the unique numbers in a given table.
local function unique_product(list_data)
	local product = 1
	for i = 1, #list_data do
		local found = false
		for j = 1, #list_data do
			if i ~= j and list_data[i] == list_data[j] then
				found = true
				break
			end
		end
		if not found then
			product = product * list_data[i]
		end
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