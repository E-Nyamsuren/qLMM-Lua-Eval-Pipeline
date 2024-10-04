-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
    local a = n % 10
    local b = n % 100
    local c = n % 1000
    local d = n % 10000
    local e = n % 100000
    local f = n % 1000000
    local g = n % 10000000
    local h = n % 100000000
    local i = n % 1000000000
    local j = n % 10000000000
    local k = n % 100000000000
    local l = n % 1000000000000
    local m = n % 10000000000000
    local n = n % 100000000000000
    local o = n % 1000000000000000
    local p = n % 10000000000000000
    local q = n % 100000000000000000
    local r = n % 1000000000000000000
    local s = n % 10000000000000000000
    local t = n % 100000000000000000000
    local u = n % 1000000000000000000000
    local v = n % 10000000000000000000000
    local w = n % 100000000000000000000000


lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())