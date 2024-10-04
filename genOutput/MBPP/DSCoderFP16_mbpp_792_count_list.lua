-- Write a luathon function to count the number of tables in a given number of tables.
local function count_list(input_list)
    local count = 0
    for i, v in ipairs(input_list) do
        if type(v) == "table" then
            count = count + count_list(v)
        else
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_list
    lu.assertEquals(candidate({{1, 3}, {5, 7}, {9, 11}, {13, 15, 17}}), 4)
    lu.assertEquals(candidate({{1, 2}, {2, 3}, {4, 5}}), 3)
    lu.assertEquals(candidate({{1, 0}, {2, 0}}), 2)
end

os.exit(lu.LuaUnit.run())