-- Write a luathon function to return the negative numbers in a table.
local function neg_nos(list1)
    local neg_nums = {}
    for _, num in ipairs(list1) do
        if num < 0 then
            table.insert(neg_nums, num)
        end
    end
    return neg_nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = neg_nos
    lu.assertEquals(candidate({-1, 4, 5, -6}), {-1, -6})
    lu.assertEquals(candidate({-1, -2, 3, 4}), {-1, -2})
    lu.assertEquals(candidate({-7, -6, 8, 9}), {-7, -6})
end

os.exit(lu.LuaUnit.run())