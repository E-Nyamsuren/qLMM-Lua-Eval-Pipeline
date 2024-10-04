-- Check if in given table of numbers, are any two numbers closer to each other than
-- given threshold.
-- >>> has_close_elements({1.0, 2.0, 3.0}, 0.5)
-- false
-- >>> has_close_elements({1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3)
-- true
local function has_close_elements(numbers, threshold)
    for i, num1 in ipairs(numbers) do
        for j, num2 in ipairs(numbers) do
            if i ~= j and math.abs(num1 - num2) < threshold then
                return true
            end
        end
    end
    return false
end
print(has_close_elements({1.0, 2.0, 3.0}, 0.5)) -- false
print(has_close_elements({1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3)) -- true
print(has_close_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.8)) -- false
print(has_close_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.0)) -- false
print(has_close_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.1)) -- true
print(has_close_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.2)) -- true
print(has_close_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.25)) -- true
print(has_close_elements({1.0, 2.0, 3.0, 4.0

lu = require('luaunit')

function test_humaneval()
local candidate = has_close_elements
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.3), true)
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.05), false)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.95), true)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.8), false)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.1), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 1.0), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 0.5), false)
end

os.exit(lu.LuaUnit.run())