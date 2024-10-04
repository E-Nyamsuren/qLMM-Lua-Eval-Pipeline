-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
    if n == 1 then
        return 1
    else
        return 18 * starts_one_ends(n - 1)
    end
end
print(starts_one_ends(2)) -- Expected output: 18
print(starts_one_ends(3)) -- Expected output: 180
print(starts_one_ends(4)) -- Expected output: 1800
print(starts_one_ends(5)) -- Expected output: 18000
print(starts_one_ends(6)) -- Expected output: 180000
print(starts_one_ends(7)) -- Expected output: 1800000
print(starts_one_ends(8)) -- Expected output: 18000000
print(starts_one_ends(9)) -- Expected output: 180000000
print(starts_one_ends(10)) -- Expected output: 1800000000
print(starts_one_ends(11)) -- Expected output: 18000000000
print(starts_one_ends(12)) -- Expected output: 180000000000
print(starts_one_ends(13)) -- Expected output: 1800000000000
print(starts_one_ends(14)) -- Expected output: 18000000000000
print(starts_one_ends(15)) -- Expected output: 180000000000000
print(starts_one_ends(16)) -- Expected output: 1800000000000000
print(starts_one_ends(17)) -- Expected output: 18000000000000000
print(starts_one_ends(18)) -- Expected output: 180000000000000000
print(starts_one_ends(19)) -- Expected output: 1800000000000000000
print(starts_one_ends(20)) -- Expected output: 18000000000000000000
print(starts_one_ends(21)) -- Expected

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