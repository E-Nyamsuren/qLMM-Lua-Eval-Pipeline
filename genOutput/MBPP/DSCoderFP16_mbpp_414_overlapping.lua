-- Write a luathon function to check whether any value in a sequence exists in a sequence or not.
local function overlapping(list1, list2)
    for _, v1 in ipairs(list1) do
        for _, v2 in ipairs(list2) do
            if v1 == v2 then
                return true
            end
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = overlapping
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 8, 9}), false)
    lu.assertEquals(candidate({1, 2, 3}, {4, 5, 6}), false)
    lu.assertEquals(candidate({1, 4, 5}, {1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())