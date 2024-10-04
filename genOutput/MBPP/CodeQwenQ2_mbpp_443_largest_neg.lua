-- Write a luathon function to find the largest negative number from the given table.
local function largest_neg(list1)
    local largest = nil
    for _, v in ipairs(list1) do
        if v < 0 and (largest == nil or v > largest) then
            largest = v
        end
    end
    return largest
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_neg
    lu.assertEquals(candidate({1, 2, 3, -4, -6}), -6)
    lu.assertEquals(candidate({1, 2, 3, -8, -9}), -9)
    lu.assertEquals(candidate({1, 2, 3, 4, -1}), -1)
end

os.exit(lu.LuaUnit.run())