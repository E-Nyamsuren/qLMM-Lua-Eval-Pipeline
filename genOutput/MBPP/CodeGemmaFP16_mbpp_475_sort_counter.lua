-- Write a function to sort a table by value.
local function sort_counter(dict1)
    local dict2 = {}
    for key, value in pairs(dict1) do
        dict2[value] = key
    end
    return dict2
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_counter
    lu.assertEquals(candidate({['Math'] = 81, ['Physics'] = 83, ['Chemistry'] = 87}), {{'Chemistry', 87}, {'Physics', 83}, {'Math', 81}})
    lu.assertEquals(candidate({['Math'] = 400, ['Physics'] = 300, ['Chemistry'] = 250}), {{'Math', 400}, {'Physics', 300}, {'Chemistry', 250}})
    lu.assertEquals(candidate({['Math'] = 900, ['Physics'] = 1000, ['Chemistry'] = 1250}), {{'Chemistry', 1250}, {'Physics', 1000}, {'Math', 900}})
end

os.exit(lu.LuaUnit.run())