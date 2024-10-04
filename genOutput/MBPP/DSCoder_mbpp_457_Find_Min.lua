-- Write a luathon function to find the subtable having minimum length.
local function Find_Min(lst)
    local min_len = #lst[1]
    local min_tbl = lst[1]
    for i,tbl in ipairs(lst) do
        if #tbl < min_len then
            min_len = #tbl
            min_tbl = tbl
        end
    end
    return min_tbl
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1})
    lu.assertEquals(candidate({{1, 1}, {1, 1, 1}, {1, 2, 7, 8}}), {1, 1})
    lu.assertEquals(candidate({{'x'}, {'x', 'y'}, {'x', 'y', 'z'}}), {'x'})
end

os.exit(lu.LuaUnit.run())