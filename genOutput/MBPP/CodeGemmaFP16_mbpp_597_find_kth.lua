-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local m = #arr1
    local n = #arr2
    local i = 0
    local j = 0
    local count = 0
    while i < m and j < n do
        if arr1[i] < arr2[j] then
            count = count + 1
            if count == k then
                return arr1[i]
            end
            i = i + 1
        else
            count = count + 1
            if count == k then
                return arr2[j]
            end
            j = j + 1
        end
    end
    while i < m do
        count = count + 1
        if count == k then
            return arr1[i]
        end
        i = i + 1
    end
    while j < n do
        count = count + 1
        if count == k then
            return arr2[j]
        end
        j = j + 1
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