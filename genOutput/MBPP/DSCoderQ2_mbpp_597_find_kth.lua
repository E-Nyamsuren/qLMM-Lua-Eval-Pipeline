-- Write a function to find kth element from the given two sorted tables.
local function find_kth(arr1, arr2, k)
    local m, n = #arr1, #arr2
    if m > n then
        return find_kth(arr2, arr1, k)
    end
    if m == 0 then
        return arr2[k]
    end
    if k == 1 then
        return math.min(arr1[1], arr2[1])
    end
    local i = math.min(k, m)
    local j = k - i
    if arr1[i] > arr2[j] then
        return find_kth(arr1, {arr2[j + 1]}, k - j)
    elseif arr1[i] < arr2[j] then
        return find
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_kth
    lu.assertEquals(candidate({2, 3, 6, 7, 9}, {1, 4, 8, 10}, 5), 6)
    lu.assertEquals(candidate({100, 112, 256, 349, 770}, {72, 86, 113, 119, 265, 445, 892}, 7), 256)
    lu.assertEquals(candidate({3, 4, 7, 8, 10}, {2, 5, 9, 11}, 6), 8)
end

os.exit(lu.LuaUnit.run())