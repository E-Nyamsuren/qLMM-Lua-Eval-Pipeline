-- Write a function to find the table with maximum length.
local function max_length_list(input_list)
    local max_length = 0
    local max_length_list = {}
    for _, value in ipairs(input_list) do
        if #value > max_length then
            max_length = #value
            max_length_list = {value}
        elseif #value == max_length then
            table.insert(max_length_list, value)
        end
    end
    return max_length_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_length_list
    lu.assertEquals(candidate({{0}, {1, 3}, {5, 7}, {9, 11}, {13, 15, 17}}), {3, {13, 15, 17}})
    lu.assertEquals(candidate({{1, 2, 3, 4, 5}, {1, 2, 3, 4}, {1, 2, 3}, {1, 2}, {1}}), {5, {1, 2, 3, 4, 5}})
    lu.assertEquals(candidate({{3, 4, 5}, {6, 7, 8, 9}, {10, 11, 12}}), {4, {6, 7, 8, 9}})
end

os.exit(lu.LuaUnit.run())