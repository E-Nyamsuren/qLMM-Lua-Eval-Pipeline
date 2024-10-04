-- Write a function to locate the right insertion point for a specified value in sorted order.
local function right_insertion(a, x)
    local left, right = 0, #a - 1
    while left <= right do
        local mid = left + (right - left) // 2
        if a[mid] < x then
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return left
end

lu = require('luaunit')

function test_humaneval()
local candidate = right_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())