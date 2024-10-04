-- Write a function to find the kth element in the given table using 1-based indexing.
local function kth_element(arr, k)
    local n = #arr
    local left, right = 1, n
    while left <= right do
        local mid = math.floor((left + right) / 2)
        local count = 0
        for i = 1, n do
            if arr[i] <= mid then
                count = count + 1
            end
        end
        if count < k then
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return left
end

lu = require('luaunit')

function test_humaneval()
local candidate = kth_element
    lu.assertEquals(candidate({12, 3, 5, 7, 19}, 2), 3)
    lu.assertEquals(candidate({17, 24, 8, 23}, 3), 8)
    lu.assertEquals(candidate({16, 21, 25, 36, 4}, 4), 36)
end

os.exit(lu.LuaUnit.run())