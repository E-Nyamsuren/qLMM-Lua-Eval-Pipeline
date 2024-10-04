-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local len1 = #arr1
    local len2 = #arr2
    if len1 > len2 then
        return find_kth(arr2, arr1, k)
    end
    if len1 == 0 then
        return arr2[k]
    end
    if k == 1 then
        return math.min(arr1[1], arr2[1])
    end
    local pos1 = math.min(k, len1) - 1
    local pos2 = k - pos1 - 1
    if arr1[pos1 + 1] < arr2[pos2 + 1] then
        return find_kth(table.slice(arr1, pos1 + 2), arr2, k - pos1 - 1)
    elseif arr1[pos1 + 1] > arr2[pos2 + 1] then
        return find_kth(arr1, table.slice(arr2, pos2 + 2), k - pos2 - 1)
    else
        return arr1[pos1 + 1]
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