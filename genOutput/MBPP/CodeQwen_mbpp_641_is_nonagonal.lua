-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local a = 1
    local b = 2
    local c = 3
    local d = 4
    local e = 5
    local f = 6
    local g = 7
    local h = 8
    local i = 9
    local j = 10
    local k = 11
    local l = 12
    local m = 13
    local n = 14
    local o = 15
    local p = 16
    local q = 17
    local r = 18
    local s = 19
    local t = 20
    local u = 21
    local v = 22
    local w = 23
    local x = 24
    local y = 25
    local z = 26
    local aa = 27
    local ab = 28
    local ac = 29
    local ad = 30
    local ae = 31
    local af = 32
    local ag = 33
    local ah = 34
    local ai = 35
    local aj = 36
    local ak = 37
    local al = 38
    local am = 39
    local an = 40
    local ao = 41
    local ap = 42
    local aq = 43
    local ar = 44
    local as = 45
    local at = 46
    local au = 47
    local av = 48
    local aw = 49
    local ax = 50
    local ay = 51
    local az = 52
    local ba = 53
    local bb = 54
    local bc = 55
    local bd = 56
    local be = 57
    local bf = 58
    local bg = 59
    local bh = 60
    local bi = 61
    local bj = 62
    local bk = 63
    local bl = 64
    local bm = 65
    local bn = 66
    local bo = 67
    local bp = 68


lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())