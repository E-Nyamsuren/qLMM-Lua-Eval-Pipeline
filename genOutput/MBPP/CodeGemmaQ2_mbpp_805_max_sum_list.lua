-- Write a function that returns the table in a table of tables whose sum of elements is the highest.
local function max_sum_list(lists)
 vagu suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspic suspicam suspicam suspic suspicam suspic suspicam suspic suspic suspic suspicam suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_list
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6}, {10, 11, 12}, {7, 8, 9}}), {10, 11, 12})
    lu.assertEquals(candidate({{3, 2, 1}, {6, 5, 4}, {12, 11, 10}}), {12, 11, 10})
    lu.assertEquals(candidate({{2, 3, 1}}), {2, 3, 1})
end

os.exit(lu.LuaUnit.run())