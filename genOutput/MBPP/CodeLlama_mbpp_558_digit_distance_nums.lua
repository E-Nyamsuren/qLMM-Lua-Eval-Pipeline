-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    local sum = 0
    local n1_digits = {}
    local n2_digits = {}
    local n1_len = 0
    local n2_len = 0
    local i = 0
    local j = 0
    local k = 0
    local l = 0
    local m = 0
    local n = 0
    local o = 0
    local p = 0
    local q = 0
    local r = 0
    local s = 0
    local t = 0
    local u = 0
    local v = 0
    local w = 0
    local x = 0
    local y = 0
    local z = 0
    local a = 0
    local b = 0
    local c = 0
    local d = 0
    local e = 0
    local f = 0
    local g = 0
    local h = 0
    local i = 0
    local j = 0
    local k = 0
    local l = 0
    local m = 0
    local n = 0
    local o = 0
    local p = 0
    local q = 0
    local r = 0
    local s = 0
    local t = 0
    local u = 0
    local v = 0
    local w = 0
    local x = 0
    local y = 0
    local z = 0
    local a = 0
    local b = 0
    local c = 0
    local d = 0
    local e = 0
    local f = 0
    local g = 0
    local h = 0
    local i = 0
    local j = 0
    local k = 0
    local l = 0
    local m = 0
    local n = 0
    local o = 0
    local p = 0
    local q = 0


lu = require('luaunit')

function test_humaneval()
local candidate = digit_distance_nums
    lu.assertEquals(candidate(1, 2), 1)
    lu.assertEquals(candidate(23, 56), 6)
    lu.assertEquals(candidate(123, 256), 7)
end

os.exit(lu.LuaUnit.run())