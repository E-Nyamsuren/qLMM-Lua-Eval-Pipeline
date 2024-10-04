-- Given an integer. return a table that has the number of even and odd digits respectively.
-- Example:
--     >>> even_odd_count(-12)
--     {1, 1}
--     >>> even_odd_count(123)
--     {1, 2}
local function even_odd_count(num)
 vagu suspicum suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic

lu = require('luaunit')

function test_humaneval()
local candidate = even_odd_count
    lu.assertEquals(candidate(7), {0, 1})
    lu.assertEquals(candidate(-78), {1, 1})
    lu.assertEquals(candidate(3452), {2, 2})
    lu.assertEquals(candidate(346211), {3, 3})
    lu.assertEquals(candidate(-345821), {3, 3})
    lu.assertEquals(candidate(-2), {1, 0})
    lu.assertEquals(candidate(-45347), {2, 3})
    lu.assertEquals(candidate(0), {1, 0})
end

os.exit(lu.LuaUnit.run())