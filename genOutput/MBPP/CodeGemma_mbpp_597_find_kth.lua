-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local len1 = #arr1
    local len2 = #arr2
    local len = len1 + len2
    if len < k then
        return nil
    end
    local i = 1
    local j = 1
    local kth = 0
    while i <= len1 and j <= len2 do
        if arr1[i] < arr2[j] then
            kth = kth + 1
            if kth == k then
                return arr1[i]
            end
            i = i + 1
        else
            kth = kth + 1
            if kth == k then
                return arr2[j]
            end
            j = j + 1
        end
    end
    while i <= len1 do
        kth = kth + 1
        if kth == k then
            return arr1[i]
        end
        i = i + 1
    end
    while j <= len2 do
        kth = kth + 1
        if kth == k then
            return arr2[j]
        end
        j = j + 1
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