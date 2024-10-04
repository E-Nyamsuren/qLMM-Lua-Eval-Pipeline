-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local len1 = #arr1
    local len2 = #arr2
    if len1 + len2 < k then
        return nil
    end
    if len1 == 0 then
        return arr2[k]
    end
    if len2 == 0 then
        return arr1[k]
    end
    if k == 1 then
        return math.min(arr1[1], arr2[1])
    end
    if k == len1 + len2 then
        return math.max(arr1[len1], arr2[len2])
    end
    local mid1 = math.floor(len1 / 2)
    local mid2 = math.floor(len2 / 2)
    if arr1[mid1] < arr2[mid2] then
        return find_kth(arr1, arr2, k - mid1 - 1)
    elseif arr1[mid1] > arr2[mid2] then
        return find_kth(arr1, arr2, k - mid2 - 1)
    else
        return arr1[mid1]
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_kth
    lu.assertEquals(candidate({2, 3, 6, 7, 9}, {1, 4, 8, 10}, 5), 6)
    lu.assertEquals(candidate({100, 112, 256, 349, 770}, {72, 86, 113, 119, 265, 445, 892}, 7), 256)
    lu.assertEquals(candidate({3, 4, 7, 8, 10}, {2, 5, 9, 11}, 6), 8)
end

os.exit(lu.LuaUnit.run())