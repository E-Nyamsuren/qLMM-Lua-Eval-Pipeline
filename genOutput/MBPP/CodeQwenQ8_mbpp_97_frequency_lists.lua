-- Write a function to find frequency of each element in a flattened table of tables, returned in a table.
local function frequency_lists(list1)
    local freq_table = {}
    for _, sublist in ipairs(list1) do
        for _, element in ipairs(sublist) do
            freq_table[element] = (freq_table[element] or 0) + 1
        end
    end
    return freq_table
end

lu = require('luaunit')

function test_humaneval()
local candidate = frequency_lists
    lu.assertEquals(candidate({{1, 2, 3, 2}, {4, 5, 6, 2}, {7, 8, 9, 5}}), {[1] = 1, [2] = 3, [3] = 1, [4] = 1, [5] = 2, [6] = 1, [7] = 1, [8] = 1, [9] = 1})
    lu.assertEquals(candidate({{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}}), {[1] = 1, [2] = 1, [3] = 1, [4] = 1, [5] = 1, [6] = 1, [7] = 1, [8] = 1, [9] = 1, [10] = 1, [11] = 1, [12] = 1})
    lu.assertEquals(candidate({{20, 30, 40, 17}, {18, 16, 14, 13}, {10, 20, 30, 40}}), {[20] = 2, [30] = 2, [40] = 2, [17] = 1, [18] = 1, [16] = 1, [14] = 1, [13] = 1, [10] = 1})
end

os.exit(lu.LuaUnit.run())