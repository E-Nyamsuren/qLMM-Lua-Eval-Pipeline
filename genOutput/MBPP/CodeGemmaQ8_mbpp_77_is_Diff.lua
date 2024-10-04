-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
    local a = n % 10
    local b = (n - a) / 10
    local c = b % 10
    local d = (b - c) / 10
    local e = d % 10
    local f = (d - e) / 10
    local g = f % 10
    local h = (f - g) / 10
    local i = h % 10
    local j = (h - i) / 10
    local k = j % 10
    local l = (j - k) / 10
    local m = l % 10
    local n = (l - m) / 10
    local o = n % 10
    local p = (n - o) / 10
    local q = p % 10
    local r = (p - q) / 10
    local s = r % 10
    local t = (r - s) / 10
    local u = t % 10
    local v = (t - u) / 10
    local w = v % 10
    local x = (v - w) / 10
    local y = x % 10
    local z = (x - y) / 10
    local aa = z % 10
    local bb = (z - aa) / 10
    local cc = bb % 10
    local dd = (bb - cc) / 10
    local ee = dd % 10
    local ff = (dd - ee) / 10
    local gg = ff % 10
    local hh = (ff - gg) / 10
    local ii = hh % 10
    local jj = (hh - ii) / 10
    local kk = jj % 10
    local ll = (jj - kk) / 10
    local mm = ll % 10
    local nn = (ll - mm) / 10
    local oo

lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())