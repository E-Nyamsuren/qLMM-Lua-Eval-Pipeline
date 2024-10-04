-- Write a function to find the median of two sorted tables of same size.
local function get_median(arr1, arr2, n)
    local i = 1
    local j = 1
    local k = 1
    local median = 0
    local arr = {}
    while i <= n and j <= n do
        if arr1[i] < arr2[j] then
            arr[k] = arr1[i]
            k = k + 1
            i = i + 1
        else
            arr[k] = arr2[j]
            k = k + 1
            j = j + 1
        end
    end
    if i > n then
        while j <= n do
            arr[k] = arr2[j]
            k = k + 1
            j = j + 1
        end
    else
        while i <= n do
            arr[k] = arr1[i]
            k = k + 1
            i = i + 1
        end
    end
    if n % 2 == 0 then
        median = (arr[n / 2] + arr[n / 2 + 1]) / 2
    else
        median = arr[n / 2 + 1]
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