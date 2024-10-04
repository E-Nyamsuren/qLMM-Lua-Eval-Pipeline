-- Write a function that takes a table of numbers as input and returns 
-- the number of elements in the table that are greater than 10 and both 
-- first and last digits of a number are odd (1, 3, 5, 7, 9).
-- For example:
-- >>> specialFilter({15, -73, 14, -15})
-- 1
-- >>> specialFilter({33, -2, -3, 45, 21, 109})
-- 2
local function specialFilter(nums)
    local count = 0
    for _, num in ipairs(nums) do
        if num > 10 then
            local str = tostring(num)
            local first_digit = tonumber(str:sub(1, 1))
            local last_digit = tonumber(str:sub(-1, -1))
            if first_digit % 2 ~= 0 and last_digit % 2 ~= 0 then
                count = count + 1
            end
        end
    end
    return count
end
print(specialFilter({15, -73, 14, -15})) -- 1
print(specialFilter({33, -2, -3, 45, 21, 109})) -- 2
print(specialFilter({11, 22, 33, 44, 55})) -- 3
print(specialFilter({1, 2, 3, 4, 5})) -- 0
print(specialFilter({})) -- 0
print(specialFilter({111, 222, 333, 444, 555})) -- 3
print(specialFilter({10, 20, 30, 40, 50})) -- 0
print(specialFilter({13, 27, 35, 47, 59})) -- 5
print(specialFilter({1111, 2222, 3333, 4444, 5555})) -- 5
print(specialFilter({11111, 22222, 33333, 44444, 55555})) -- 5
print(specialFilter({12345, 23456, 34567, 45678, 56789})) -- 5
print(specialFilter({123

lu = require('luaunit')

function test_humaneval()
local candidate = specialFilter
    lu.assertEquals(candidate({5, -2, 1, -5}), 0)
    lu.assertEquals(candidate({15, -73, 14, -15}), 1)
    lu.assertEquals(candidate({33, -2, -3, 45, 21, 109}), 2)
    lu.assertEquals(candidate({43, -12, 93, 125, 121, 109}), 4)
    lu.assertEquals(candidate({71, -2, -33, 75, 21, 19}), 3)
    lu.assertEquals(candidate({1}), 0)
    lu.assertEquals(candidate({}), 0)
end

os.exit(lu.LuaUnit.run())