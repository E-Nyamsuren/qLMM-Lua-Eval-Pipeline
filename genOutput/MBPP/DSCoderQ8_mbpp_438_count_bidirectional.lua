-- Write a function to count bidirectional table pairs.
local function count_bidirectional(test_list)
    local count = 0
    for i = 1, #test_list do
        for j = i + 1, #test_list do
            if test_list[i][j] == test_list[j][i] then
                count = count + 1
            end
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_bidirectional
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 3)
    lu.assertEquals(candidate({{5, 6}, {1, 3}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 2)
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 2}, {6, 5}, {2, 1}}), 4)
end

os.exit(lu.LuaUnit.run())