-- Write a luathon function to find the length of the longest subtables.
local function Find_Max_Length(lst)
    local max_length = 0
    for key, value in ipairs(lst) do
        if type(value) == 'table' then
            local len = table.length(value)
            if len > max_length then
                max_length = len
            end
        end
    end
    return max_length
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Max_Length
    lu.assertEquals(candidate({{1}, {1, 4}, {5, 6, 7, 8}}), 4)
    lu.assertEquals(candidate({{0, 1}, {2, 2}, {3, 2, 1}}), 3)
    lu.assertEquals(candidate({{7}, {22, 23}, {13, 14, 15}, {10, 20, 30, 40, 50}}), 5)
end

os.exit(lu.LuaUnit.run())