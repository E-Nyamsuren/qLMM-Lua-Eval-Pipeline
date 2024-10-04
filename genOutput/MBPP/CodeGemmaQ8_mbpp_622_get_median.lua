-- Write a function to find the median of two sorted tables of same size.
local function get_median(arr1, arr2, n)
    local i, j, k = 1, 1, 1
    local median = 0
    while k <= n do
        if arr1[i] < arr2[j] then
            median = arr1[i]
            i = i + 1
        else
            median = arr2[j]
            j = j + 1
        end
        k = k + 1
    end
    return median
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_median
    lu.assertEquals(candidate({1, 12, 15, 26, 38}, {2, 13, 17, 30, 45}, 5), 16.0)
    lu.assertEquals(candidate({2, 4, 8, 9}, {7, 13, 19, 28}, 4), 8.5)
    lu.assertEquals(candidate({3, 6, 14, 23, 36, 42}, {2, 18, 27, 39, 49, 55}, 6), 25.0)
end

os.exit(lu.LuaUnit.run())