-- Write a function to find the table of maximum length in a table of tables.
local function max_length(list1)
    local max_length = 0
    for _, list in ipairs(list1) do
        local length = #list
        if length > max_length then
            max_length = length
        end
    end
    return max_length
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_length
    lu.assertEquals(candidate({{0}, {1, 3}, {5, 7}, {9, 11}, {13, 15, 17}}), {3, {13, 15, 17}})
    lu.assertEquals(candidate({{1}, {5, 7}, {10, 12, 14, 15}}), {4, {10, 12, 14, 15}})
    lu.assertEquals(candidate({{5}, {15, 20, 25}}), {3, {15, 20, 25}})
end

os.exit(lu.LuaUnit.run())