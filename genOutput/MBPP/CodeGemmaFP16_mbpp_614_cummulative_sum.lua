-- Write a function to find the cumulative sum of all the values that are present in the given table of tables.
local function cummulative_sum(test_list)
    local cummulative_sum = 0
    for i = 1, #test_list do
        cummulative_sum = cummulative_sum + test_list[i]
    end
    return cummulative_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = cummulative_sum
    lu.assertEquals(candidate({{1, 3}, {5, 6, 7}, {2, 6}}), 30)
    lu.assertEquals(candidate({{2, 4}, {6, 7, 8}, {3, 7}}), 37)
    lu.assertEquals(candidate({{3, 5}, {7, 8, 9}, {4, 8}}), 44)
end

os.exit(lu.LuaUnit.run())