
--[[
You are given a 1 by n pixel image, where each pixel has a color represented by an integer. You can perform an operation where you pick a color and change all connected pixels of the same color to the chosen color. Two pixels are connected if they are adjacent and have the same color. Find the minimum number of operations required to make all pixels the same color.

Note: For each color, there are at most 20 pixels of that color.

Examples:
    >>> minOperations(5, {1, 2, 3, 2, 1})
    2
]]--
function minOperations(n, pixels)
    local min = 0
    local max = 0
    local count = 0
    local i = 1
    local j = 1
    local k = 1
    local l = 1
    local m = 1
    local n = 1
    local o = 1
    local p = 1
    local q = 1
    local r = 1
    local s = 1
    local t = 1
    local u = 1
    local v = 1
    local w = 1
    local x = 1
    local y = 1
    local z = 1
    local a = 1
    local b = 1
    local c = 1
    local d = 1
    local e = 1
    local f = 1
    local g = 1
    local h = 1
    local i = 1
    local j = 1
    local k = 1
    local l = 1
    local m = 1
    local n = 1
    local o = 1
    local p = 1
    local q = 1
    local r = 1
    local s = 1
    local t = 1
    local u = 1
    local v = 1
    local w = 1
    local x = 1
    local y = 1
    local z = 1
    local a = 1
    local b = 1
    local c = 1
    local d = 1
    local e = 1
    local f = 1
    local g = 1
    local h = 1
    local i = 1
    local j = 1
    local k = 1
    local l = 1
    local m = 1
    local n = 1
    local o = 1
    local

lu = require('luaunit')

function testMinOperations()
    local candidate = minOperations
    lu.assertTrue(candidate(5, {1, 2, 3, 2, 1}) == 2)
    lu.assertTrue(candidate(4, {1, 1, 2, 2}) == 1)
    lu.assertTrue(candidate(5, {1, 2, 1, 4, 2}) == 3)
    lu.assertTrue(candidate(5, {5, 5, 5, 5, 5}) == 0)
    lu.assertTrue(candidate(6, {1, 1, 1, 2, 2, 2}) == 1)
    lu.assertTrue(candidate(7, {1, 3, 3, 3, 2, 2, 2}) == 2)
    lu.assertTrue(candidate(8, {4, 4, 4, 4, 3, 3, 3, 3}) == 1)
    lu.assertTrue(candidate(9, {1, 2, 3, 4, 5, 6, 7, 8, 9}) == 8)
    lu.assertTrue(candidate(10, {1, 2, 1, 2, 1, 2, 1, 2, 1, 2}) == 5)
    lu.assertTrue(candidate(3, {3, 3, 3}) == 0)
    lu.assertTrue(candidate(4, {2, 1, 1, 2}) == 1)
end

os.exit(lu.LuaUnit.run())