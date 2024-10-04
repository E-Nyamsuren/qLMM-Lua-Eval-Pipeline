-- Write a function to locate the right insertion point for a specified value in sorted order.
local function right_insertion(a, x)
    local l, r = 1, #a + 1
    while l < r do
        local m = math.floor((l + r) / 2)
        if a[m] < x then
            l = m + 1
        else
            r = m
        end
    end
    return l
end

lu = require('luaunit')

function test_humaneval()
local candidate = right_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())