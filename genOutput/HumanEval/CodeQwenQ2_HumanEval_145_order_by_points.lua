-- Write a function which sorts the given table of integers
-- in ascending order according to the sum of their digits.
-- Note: if there are several items with similar sum of their digits,
-- order them based on their index in original table.
-- For example:
-- >>> order_by_points({1, 11, -1, -11, -12})
-- {-1, -11, 1, -12, 11}
-- >>> order_by_points({})
-- {}
local function order_by_points(nums)
    local function sum_of_digits(n)
        local sum = 0
        local abs_n = math.abs(n)
        while abs_n > 0 do
            sum = sum + abs_n % 10
            abs_n = math.floor(abs_n / 10)
        end
        return sum
    end
    table.sort(nums, function(a, b)
        local sum_a = sum_of_digits(a)
        local sum_b = sum_of_digits(b)
        if sum_a == sum_b then
            return a < b
        else
            return sum_a < sum_b
        end
    end)
    return nums
end
print(table.unpack(order_by_points({1, 11, -1, -11, -12})))
print(table.unpack(order_by_points({})))
print(table.unpack(order_by_points({111, 21, 31, 41, 51, 61, 71, 81, 91})))
print(table.unpack(order_by_points({111, 21, 31, 41, 51, 61, 71, 81, 91, 100})))
print(table.unpack(order_by_points({111, 21, 31, 41, 51, 61, 71, 81, 91, 100, 101})))
print(table.unpack(order_by_points({111, 21, 31, 41, 51, 61, 71, 81, 91

lu = require('luaunit')

function test_humaneval()
local candidate = order_by_points
    lu.assertEquals(candidate({1, 11, -1, -11, -12}), {-1, -11, 1, -12, 11})
    lu.assertEquals(candidate({1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}), {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, -11, -32, 43, 54, -98, 2, -3}), {-3, -32, -98, -11, 1, 2, 43, 54})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}), {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({0, 6, 6, -76, -21, 23, 4}), {-76, -21, 0, 4, 23, 6, 6})
end

os.exit(lu.LuaUnit.run())