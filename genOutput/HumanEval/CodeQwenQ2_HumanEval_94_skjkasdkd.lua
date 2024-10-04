-- You are given a table of integers.
-- You need to find the largest prime value and return the sum of its digits.
-- Examples:
-- >>> skjkasdkd({0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3})
-- 10
-- >>> skjkasdkd({1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1})
-- 25
-- >>> skjkasdkd({1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3})
-- 13
-- >>> skjkasdkd({0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6})
-- 11
-- >>> skjkasdkd({0, 81, 12, 3, 1, 21})
-- 3
-- >>> skjkasdkd({0, 8, 1, 2, 1, 7})
-- 7
local function skjkasdkd(lst)
    local function is_prime(n)
        if n <= 1 then
            return false
        end
        for i = 2, math.sqrt(n) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    local max_prime = 0
    for _, v in ipairs(lst) do
        if is_prime(v) and v > max_prime then
            max_prime = v
        end
    end
    local sum = 0
    while max_prime > 0 do
        sum = sum + max_prime % 10


lu = require('luaunit')

function test_humaneval()
local candidate = skjkasdkd
    lu.assertEquals(candidate({0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3}), 10)
    lu.assertEquals(candidate({1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1}), 25)
    lu.assertEquals(candidate({1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3}), 13)
    lu.assertEquals(candidate({0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6}), 11)
    lu.assertEquals(candidate({0, 81, 12, 3, 1, 21}), 3)
    lu.assertEquals(candidate({0, 8, 1, 2, 1, 7}), 7)
    lu.assertEquals(candidate({8191}), 19)
    lu.assertEquals(candidate({8191, 123456, 127, 7}), 19)
    lu.assertEquals(candidate({127, 97, 8192}), 10)
end

os.exit(lu.LuaUnit.run())