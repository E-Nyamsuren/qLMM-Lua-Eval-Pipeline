-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local sum = 0
    local a = 3
    local b = 2
    local c = 1
    local d = 0
    local e = 1
    local f = 2
    local g = 3
    local h = 5
    local i = 8
    local j = 13
    local k = 21
    local l = 34
    local m = 55
    local n = 89
    local o = 144
    local p = 233
    local q = 377
    local r = 610
    local s = 987
    local t = 1597
    local u = 2584
    local v = 4181
    local w = 6765
    local x = 10946
    local y = 17711
    local z = 28657
    local a1 = 46368
    local a2 = 75025
    local a3 = 121393
    local a4 = 196418
    local a5 = 317811
    local a6 = 514229
    local a7 = 832040
    local a8 = 1346269
    local a9 = 2178309
    local a10 = 3524578
    local a11 = 5702887
    local a12 = 9227465
    local a13 = 14930352
    local a14 = 24157817
    local a15 = 39088169
    local a16 = 63245986
    local a17 = 102334155
    local a18 = 165580141


lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())