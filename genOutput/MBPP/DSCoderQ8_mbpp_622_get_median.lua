-- Write a function to find the median of two sorted tables of same size.
local function get_median(arr1, arr2, n)
    local i, j, med1, med2
    i = j = med1 = med2 = 0
    while (i < n and j < n) do
        if (arr1[i] < arr2[j]) then
            med1 = med2
            i = i + 1
        else
            med1 = med2
            j = j + 1
        end
        med2 = arr1[i] if arr1[i] > arr2[j] else arr2[j]
    end
    return (med1 + med2) / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_median
    lu.assertEquals(candidate({1, 12, 15, 26, 38}, {2, 13, 17, 30, 45}, 5), 16.0)
    lu.assertEquals(candidate({2, 4, 8, 9}, {7, 13, 19, 28}, 4), 8.5)
    lu.assertEquals(candidate({3, 6, 14, 23, 36, 42}, {2, 18, 27, 39, 49, 55}, 6), 25.0)
end

os.exit(lu.LuaUnit.run())