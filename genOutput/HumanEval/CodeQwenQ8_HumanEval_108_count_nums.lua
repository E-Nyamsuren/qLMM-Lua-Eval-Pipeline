-- Write a function count_nums which takes a table of integers and returns
-- the number of elements which has a sum of digits > 0.
-- If a number is negative, then its first signed digit will be negative:
-- e.g. -123 has signed digits -1, 2, and 3.
-- >>> count_nums({})
-- 0
-- >>> count_nums({-1, 11, -11})
-- 1
-- >>> count_nums({1, 1, 2})
-- 3
local function count_nums(arr)
    local count = 0
    for _, num in ipairs(arr) do
        local sum = 0
        local n = num
        while n ~= 0 do
            sum = sum + n % 10
            n = math.floor(n / 10)
        end
        if sum > 0 then
            count = count + 1
        end
    end
    return count
end
print(count_nums({})) -- 0
print(count_nums({-1, 11, -11})) -- 1
print(count_nums({1, 1, 2})) -- 3
print(count_nums({0, -1, 9, -10})) -- 2
print(count_nums({123, -456, 789})) -- 3
print(count_nums({-12345, 67890, -123456789})) -- 3
print(count_nums({999999999, -888888888, 777777777})) -- 3
print(count_nums({-999999999, 888888888, -777777777})) -- 3
print(count_nums({999999999999999999, -888888888888888888, 777777777777777777})) -- 3
print(count_nums({-999999999999999999, 888888888888888888, -777777777777777777})) -- 3
print(count_nums({999999999999999999999999999999999999, -888888888888888888888888888888888888, 777777777777777777777777777777777

lu = require('luaunit')

function test_humaneval()
local candidate = count_nums
    lu.assertEquals(candidate({}), 0)
    lu.assertEquals(candidate({-1, -2, 0}), 0)
    lu.assertEquals(candidate({1, 1, 2, -2, 3, 4, 5}), 6)
    lu.assertEquals(candidate({1, 6, 9, -6, 0, 1, 5}), 5)
    lu.assertEquals(candidate({1, 100, 98, -7, 1, -1}), 4)
    lu.assertEquals(candidate({12, 23, 34, -45, -56, 0}), 5)
    lu.assertEquals(candidate({0, 1}), 1)
    lu.assertEquals(candidate({1}), 1)
end

os.exit(lu.LuaUnit.run())