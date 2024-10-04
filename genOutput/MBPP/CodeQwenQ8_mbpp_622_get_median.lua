-- Write a function to find the median of two sorted tables of same size.
local function get_median(arr1, arr2, n)
    local i = 0
    local j = 0
    local count = 0
    local median1 = -1
    local median2 = -1
    
    while i < n and j < n do
        count = count + 1
        if arr1[i] <= arr2[j] then
            if count == n / 2 then
                median1 = arr1[i]
                if n % 2 == 0 then
                    median2 = arr1[i]
                end
            end
            i = i + 1
        else
            if count == n / 2 then
                median1 = arr2[j]
                if n % 2 == 0 then
                    median2 = arr2[j]
                end
            end
            j = j + 1
        end
    end
    
    while i < n do
        count = count + 1
        if count == n / 2 then
            median1 = arr1[i]
            if n % 2 == 0 then
                median2 = arr1[i]
            end
            break
        end
        i = i + 1
    end
    
    while j < n do
        count = count + 1
        if count == n / 2 then
            median1 = arr2[j]
            if n % 2 == 0 then
                median2 = arr2[j]
            end
            break
        end
        j = j + 1
    end
    
    if n % 2 == 0 then
        return (median1 + median2) / 2
    else
        return median1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_median
    lu.assertEquals(candidate({1, 12, 15, 26, 38}, {2, 13, 17, 30, 45}, 5), 16.0)
    lu.assertEquals(candidate({2, 4, 8, 9}, {7, 13, 19, 28}, 4), 8.5)
    lu.assertEquals(candidate({3, 6, 14, 23, 36, 42}, {2, 18, 27, 39, 49, 55}, 6), 25.0)
end

os.exit(lu.LuaUnit.run())