-- Write a luathon function which takes a table of integers and only returns the odd ones.
local function Split(list)
    local odd = {}
    local even = {}
    for k,v in pairs(list) do
        if v % 2 == 0 then
            table.insert(even, v)
        else
            table.insert(odd, v)
        end
    end
    return odd, even
end

lu = require('luaunit')

function test_humaneval()
local candidate = Split
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), {1, 3, 5})
    lu.assertEquals(candidate({10, 11, 12, 13}), {11, 13})
    lu.assertEquals(candidate({7, 8, 9, 1}), {7, 9, 1})
end

os.exit(lu.LuaUnit.run())