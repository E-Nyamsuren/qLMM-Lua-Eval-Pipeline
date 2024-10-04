-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
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
    local aa = 1
    local ab = 1
    local ac = 1
    local ad = 1
    local ae = 1
    local af = 1
    local ag = 1
    local ah = 1
    local ai = 1
    local aj = 1
    local ak = 1
    local al = 1
    local am = 1
    local an = 1
    local ao = 1
    local ap = 1
    local aq = 1
    local ar = 1
    local as = 1
    local at = 1
    local au = 1
    local av = 1
    local aw = 1
    local ax = 1
    local ay = 1
    local az = 1
    local ba = 1
    local bb = 1
    local bc = 1
    local bd = 1
    local be = 1
    local bf = 1
    local bg = 1
    local bh = 1
    local bi = 1
    local bj = 1
    local bk = 1
    local bl = 1
    local bm = 1
    local bn = 1
    local bo = 1
    local bp = 1
    local bq = 1
    local br

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())