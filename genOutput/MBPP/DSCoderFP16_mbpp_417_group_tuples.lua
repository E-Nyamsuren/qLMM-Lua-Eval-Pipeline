-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
    local result = {}
    for _, v in ipairs(Input) do
        if result[v[1]] then
            result[v[1]].push(v)
        else
            result[v[1]] = {v}
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())