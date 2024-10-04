
--[[
Classify the integer x based on the following method:
If x is a single-digit number, x belongs to its own class.
Otherwise, sum the digits of x, get a new x, and iterate until the class is determined.

Parameters:
- x (string): The integer to be classified as a string.
    
Returns:
- int: The class to which the integer x belongs.

Example usage:
classify_integer("24") --> 6
]]
function classify_integer(x)
    local x = tonumber(x)
    local sum = 0
    while x > 9 do
        sum = 0
        while x > 0 do
            sum = sum + x % 10
            x = math.floor(x / 10)
        end
        x = sum
    end
    return x
end
</code>

lu = require('luaunit')

function testClassifyInteger()
    local candidate = classify_integer
    lu.assertTrue(candidate("24") == 6)
    lu.assertTrue(candidate("39") == 3)
    lu.assertTrue(candidate("123456789") == 9)
    lu.assertTrue(candidate("123456789012345678901234567890") == 9)
    lu.assertTrue(candidate("12345") == 6)
    lu.assertTrue(candidate("999999999") == 9)
    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())