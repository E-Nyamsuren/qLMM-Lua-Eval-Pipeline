-- Write a function to extract the nth element from a given table of tables.
local function extract_nth_element(list1, n)
	local count = 0
	for _, list2 in ipairs(list1) do
		for _, element in ipairs(list2) do
			count = count + 1
			if count == n then
				return element
			end
		end
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_nth_element
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 0), {'Greyson Fulton', 'Brady Kent', 'Wyatt Knott', 'Beau Turnbull'})
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 2), {99, 96, 94, 98})
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 1), {98, 97, 91, 94})
end

os.exit(lu.LuaUnit.run())