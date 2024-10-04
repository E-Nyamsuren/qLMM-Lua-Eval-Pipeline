-- Write a function to sort a table of elements.
local function pancake_sort(nums)
    local function flip(arr, i)
        local start, end_ = 0, i
        while start < end_ do
            arr[start], arr[end_] = arr[end_], arr[start]
            start, end_ = start + 1, end_ - 1
        end
    end

lu = require('luaunit')

function test_humaneval()
local candidate = pancake_sort
    lu.assertEquals(candidate({15, 79, 25, 38, 69}), {15, 25, 38, 69, 79})
    lu.assertEquals(candidate({98, 12, 54, 36, 85}), {12, 36, 54, 85, 98})
    lu.assertEquals(candidate({41, 42, 32, 12, 23}), {12, 23, 32, 41, 42})
end

os.exit(lu.LuaUnit.run())