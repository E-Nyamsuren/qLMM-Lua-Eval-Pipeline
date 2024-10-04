-- Write a luathon function to find the subtable having minimum length.
local function Find_Min(lst)
    local min_len = math.huge
    local min_subtable = {}
    for _, subtable in ipairs(lst) do
        if #subtable < min_len then
            min_len = #subtable
            min_subtable = subtable
        end
    end
    return min_subtable
end
return Find_Min

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1})
    lu.assertEquals(candidate({{1, 1}, {1, 1, 1}, {1, 2, 7, 8}}), {1, 1})
    lu.assertEquals(candidate({{'x'}, {'x', 'y'}, {'x', 'y', 'z'}}), {'x'})
end

os.exit(lu.LuaUnit.run())