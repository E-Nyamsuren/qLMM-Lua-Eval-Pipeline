-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
    if n == 1 then
        return 1
    else
        return 18 * starts_one_ends(n - 1)
    end
end
print(starts_one_ends(2)) -- 18
print(starts_one_ends(3)) -- 180
print(starts_one_ends(4)) -- 1800
print(starts_one_ends(5)) -- 18000
print(starts_one_ends(6)) -- 180000
print(starts_one_ends(7)) -- 1800000
print(starts_one_ends(8)) -- 18000000
print(starts_one_ends(9)) -- 180000000
print(starts_one_ends(10)) -- 1800000000
print(starts_one_ends(11)) -- 18000000000
print(starts_one_ends(12)) -- 180000000000
print(starts_one_ends(13)) -- 1800000000000
print(starts_one_ends(14)) -- 18000000000000
print(starts_one_ends(15)) -- 180000000000000
print(starts_one_ends(16)) -- 1800000000000000
print(starts_one_ends(17)) -- 18000000000000000
print(starts_one_ends(18)) -- 180000000000000000
print(starts_one_ends(19)) -- 1800000000000000000
print(starts_one_ends(20)) -- 18000000000000000000
print(starts_one_ends(21)) -- 180000000000000000000
print(starts_one_ends(22)) -- 1800000000000000000000
print(starts_one_ends(23)) -- 18000000000000000000000
print(starts_one_ends(24)) -- 180000000000000000000000
print(start

lu = require('luaunit')

function test_humaneval()
local candidate = starts_one_ends
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(2), 18)
    lu.assertEquals(candidate(3), 180)
    lu.assertEquals(candidate(4), 1800)
    lu.assertEquals(candidate(5), 18000)
end

os.exit(lu.LuaUnit.run())