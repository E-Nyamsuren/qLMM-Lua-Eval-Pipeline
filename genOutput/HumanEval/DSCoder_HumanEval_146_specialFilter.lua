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
    for i = 1, #nums do
        local num = nums[i]
        if num > 10 then
            local strNum = tostring(num)
            if strNum:sub(1, 1) % 2 == 1 and strNum:sub(-1) % 2 == 1 then
                count = count + 1
            end
        end
    end
    return count
end

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