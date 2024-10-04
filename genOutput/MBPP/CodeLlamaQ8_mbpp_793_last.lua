-- Write a luathon function to find the last position of an element in a sorted table.
local function last(arr, x)
    local low = 1
    local high = #arr
    while low <= high do
        local mid = math.floor((low + high) / 2)
        if arr[mid] < x then
            low = mid + 1
        elseif arr[mid] > x then
            high = mid - 1
        else
            low = mid + 1
        end
    end
    return low - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = last
    lu.assertEquals(candidate({1, 2, 3}, 1), 0)
    lu.assertEquals(candidate({1, 1, 1, 2, 3, 4}, 1), 2)
    lu.assertEquals(candidate({2, 3, 2, 3, 6, 8, 9}, 3), 3)
end

os.exit(lu.LuaUnit.run())