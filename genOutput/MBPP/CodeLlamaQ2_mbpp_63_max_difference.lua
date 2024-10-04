-- Write a function to find the maximum difference between available pairs in the given table table.
local function max_difference(test_list)
    local max_diff = 0
    for i = 1, #test_list do
        for j = i + 1, #test_list do
            if test_list[i] - test_list[j] > max_diff then
                max_diff = test_list[i] - test_list[j]
            end
        end
    end
    return max_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_difference
    lu.assertEquals(candidate({{3, 5}, {1, 7}, {10, 3}, {1, 2}}), 7)
    lu.assertEquals(candidate({{4, 6}, {2, 17}, {9, 13}, {11, 12}}), 15)
    lu.assertEquals(candidate({{12, 35}, {21, 27}, {13, 23}, {41, 22}}), 23)
end

os.exit(lu.LuaUnit.run())