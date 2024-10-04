-- Write a function to sort a table by value.
local function sort_counter(dict1)
	local keys = {}
	for k,v in pairs(dict1) do
		table.insert(keys, k)
	end
	table.sort(keys, function(a,b) return dict1[a] < dict1[b] end)
	local sorted_dict = {}
	for i,k in ipairs(keys) do
		sorted_dict[k] = dict1[k]
	end
	return sorted_dict
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_counter
    lu.assertEquals(candidate({['Math'] = 81, ['Physics'] = 83, ['Chemistry'] = 87}), {{'Chemistry', 87}, {'Physics', 83}, {'Math', 81}})
    lu.assertEquals(candidate({['Math'] = 400, ['Physics'] = 300, ['Chemistry'] = 250}), {{'Math', 400}, {'Physics', 300}, {'Chemistry', 250}})
    lu.assertEquals(candidate({['Math'] = 900, ['Physics'] = 1000, ['Chemistry'] = 1250}), {{'Chemistry', 1250}, {'Physics', 1000}, {'Math', 900}})
end

os.exit(lu.LuaUnit.run())