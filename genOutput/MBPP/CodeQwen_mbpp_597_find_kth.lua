-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local i, j = 1, 1
    while i <= #arr1 and j <= #arr2 do
        if arr1[i] < arr2[j] then
            if k == 1 then
                return arr1[i]
            end
            i = i + 1
        else
            if k == 1 then
                return arr2[j]
            end
            j = j + 1
        end
        k = k - 1
    end
    while i <= #arr1 do
        if k == 1 then
            return arr1[i]
        end
        i = i + 1
        k = k - 1
    end
    while j <= #arr2 do
        if k == 1 then
            return arr2[j]
        end
        j = j + 1
        k = k - 1
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