-- Write a luathon function to find the largest negative number from the given table.
local function largest_neg(list1)
    local max_neg = -math.huge
    for i = 1, #list1 do
        if list1[i] < 0 and list1[i] > max_neg then
            max_neg = list1[i]
        end
    end
    return max_neg
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_neg
    lu.assertEquals(candidate({1, 2, 3, -4, -6}), -6)
    lu.assertEquals(candidate({1, 2, 3, -8, -9}), -9)
    lu.assertEquals(candidate({1, 2, 3, 4, -1}), -1)
end

os.exit(lu.LuaUnit.run())