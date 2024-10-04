-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local i = 1
    local j = 1
    local count = 1
    while i <= #arr1 and j <= #arr2 do
        if arr1[i] <= arr2[j] then
            i = i + 1
        else
            j = j + 1
        end
        count = count + 1
        if count == k then
            return arr1[i - 1]
        end
    end
    return -1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_kth
    lu.assertEquals(candidate({2, 3, 6, 7, 9}, {1, 4, 8, 10}, 5), 6)
    lu.assertEquals(candidate({100, 112, 256, 349, 770}, {72, 86, 113, 119, 265, 445, 892}, 7), 256)
    lu.assertEquals(candidate({3, 4, 7, 8, 10}, {2, 5, 9, 11}, 6), 8)
end

os.exit(lu.LuaUnit.run())