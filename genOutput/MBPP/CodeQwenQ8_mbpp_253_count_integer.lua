-- Write a luathon function that returns the number of integer elements in a given table.
local function count_integer(list1)
    local count = 0
    for _, v in ipairs(list1) do
        if type(v) == "number" and v == math.floor(v) then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_integer
    lu.assertEquals(candidate({1, 2, 'abc', 1.2}), 2)
    lu.assertEquals(candidate({1, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1.2, 4, 5.1}), 2)
end

os.exit(lu.LuaUnit.run())