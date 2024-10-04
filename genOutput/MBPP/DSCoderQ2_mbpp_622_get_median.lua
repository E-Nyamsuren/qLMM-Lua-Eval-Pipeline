-- Write a function to find the median of two sorted tables of same size.
local function get_median(arr1, arr2, n)
    local i = 0, j = 0, k = 0, m1, m2
    local arr = {}
    while (i < n and j < n)
    do
        if (arr1[i] < arr2[j])
        then
            arr[k] = arr1[i]
            i = i + 1
        else
            arr[k] = arr2[j]
            j = j + 1
       k = k + 1
    end
    while (i < n)
    do
        arr[k] = arr1[i]
        i = i + 1
        k = k + 1
    end
    while (j < n)
    do
        arr[k] = arr2[j]
        j = j + 1
        k = k + 1
    end
    m1 = math.floor((n - 1) / 2)
    m2 = math.floor(n / 2)
    return (arr[m1] + arr[m2]) / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_median
    lu.assertEquals(candidate({1, 12, 15, 26, 38}, {2, 13, 17, 30, 45}, 5), 16.0)
    lu.assertEquals(candidate({2, 4, 8, 9}, {7, 13, 19, 28}, 4), 8.5)
    lu.assertEquals(candidate({3, 6, 14, 23, 36, 42}, {2, 18, 27, 39, 49, 55}, 6), 25.0)
end

os.exit(lu.LuaUnit.run())