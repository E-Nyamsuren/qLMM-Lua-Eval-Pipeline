-- Write a function to sort a table by value.
local function sort_counter(dict1)
    local counter = {}
    for k, v in pairs(dict1) do
        counter[v] = (counter[v] or 0) + 1
    end
    local sorted_counter = {}
    for k, v in pairs(counter) do
        sorted_counter[v] = (sorted_counter[v] or {})
        table.insert(sorted_counter[v], k)
    end
    local sorted_dict = {}
    for k, v in pairs(sorted_counter) do
        for i = 1, #v do
            sorted_dict[v[i]] = k
        end
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