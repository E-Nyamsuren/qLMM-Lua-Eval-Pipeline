-- Write a function to find frequency of each element in a flattened table of tables, returned in a table.
local function frequency_lists(list1)
    local list2 = {}
    for i = 1, #list1 do
        local count = 0
        for j = 1, #list1 do
            if list1[i] == list1[j] then
                count = count + 1
            end
        end
        list2[i] = count
    end
    return list2
end
print(frequency_lists({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99,

lu = require('luaunit')

function test_humaneval()
local candidate = frequency_lists
    lu.assertEquals(candidate({{1, 2, 3, 2}, {4, 5, 6, 2}, {7, 8, 9, 5}}), {[1] = 1, [2] = 3, [3] = 1, [4] = 1, [5] = 2, [6] = 1, [7] = 1, [8] = 1, [9] = 1})
    lu.assertEquals(candidate({{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}}), {[1] = 1, [2] = 1, [3] = 1, [4] = 1, [5] = 1, [6] = 1, [7] = 1, [8] = 1, [9] = 1, [10] = 1, [11] = 1, [12] = 1})
    lu.assertEquals(candidate({{20, 30, 40, 17}, {18, 16, 14, 13}, {10, 20, 30, 40}}), {[20] = 2, [30] = 2, [40] = 2, [17] = 1, [18] = 1, [16] = 1, [14] = 1, [13] = 1, [10] = 1})
end

os.exit(lu.LuaUnit.run())