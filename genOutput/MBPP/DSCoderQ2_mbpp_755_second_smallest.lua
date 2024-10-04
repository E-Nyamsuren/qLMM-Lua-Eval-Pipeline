-- Write a function to find the second smallest number in a table.
local function second_smallest(numbers)
    local min1, min2 = math.huge, math.huge
    for _, n in ipairs(numbers) do
        if n < min1 then
            min2 = min1
            min1 = n
        elseif n < min2 and n ~= min1 then
            min2 = n
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = second_smallest
    lu.assertEquals(candidate({1, 2, -8, -2, 0, -2}), -2)
    lu.assertEquals(candidate({1, 1, -0.5, 0, 2, -2, -2}), -0.5)
    lu.assertEquals(candidate({2, 2}), None)
    lu.assertEquals(candidate({2, 2, 2}), None)
end

os.exit(lu.LuaUnit.run())