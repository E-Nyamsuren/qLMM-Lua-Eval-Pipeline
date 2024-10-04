-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local len1 = #arr1
    local len2 = #arr2
    if len1 + len2 < k then
        return nil
    end
    if len1 >= len2 then
        local kth = arr1[k]
        if kth then
            return kth
        end
        local kth = arr2[k - len1]
        if kth then
            return kth
        end
    else
        local kth = arr2[k]
        if kth then
            return kth
        end
        local kth = arr1[k - len2]
        if kth then
            return kth
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_kth
    lu.assertEquals(candidate({2, 3, 6, 7, 9}, {1, 4, 8, 10}, 5), 6)
    lu.assertEquals(candidate({100, 112, 256, 349, 770}, {72, 86, 113, 119, 265, 445, 892}, 7), 256)
    lu.assertEquals(candidate({3, 4, 7, 8, 10}, {2, 5, 9, 11}, 6), 8)
end

os.exit(lu.LuaUnit.run())