-- Write a function to find the maximum difference between available pairs in the given table table.
local function max_difference(test_list)
    local max_val = -math.huge
    local min_val = math.huge
    for _, value in ipairs(test_list) do
        max_val = mathmax_val, value
        min_val = math.min(min_val, value)
    end
    return max_val - min_val
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_difference
    lu.assertEquals(candidate({{3, 5}, {1, 7}, {10, 3}, {1, 2}}), 7)
    lu.assertEquals(candidate({{4, 6}, {2, 17}, {9, 13}, {11, 12}}), 15)
    lu.assertEquals(candidate({{12, 35}, {21, 27}, {13, 23}, {41, 22}}), 23)
end

os.exit(lu.LuaUnit.run())