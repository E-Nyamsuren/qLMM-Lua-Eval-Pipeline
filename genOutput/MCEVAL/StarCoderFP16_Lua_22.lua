
--[[
Given integers c and d, where a + b = c and a * b = d, find and return the possible value of a (a <= b).
If there are multiple groups, output the group with the smallest a.
If valid values for a and b do not exist, the function will return -1.

Parameters:
- c (int): The sum of a and b.
- d (int): The product of a and b.

Returns:
Optional[int]: A possible value of a.

Usage:
    print(find_integers(7, 11))  -- Output: -1
]]--
function find_integers(c, d)
    local a = 1
    local b = 1
    local product = 1
    local sum = 0
    local result = -1

lu = require('luaunit')

function testFindIntegers()
    local candidate = find_integers
    lu.assertTrue(candidate(5, 6) == 2)
    lu.assertTrue(candidate(6, 9) == 3)
    lu.assertTrue(candidate(7, 12) == 3)
    lu.assertTrue(candidate(7, 11) == -1)
    lu.assertTrue(candidate(9, 8) == 1)
    lu.assertTrue(candidate(10, 25) == 5)
    lu.assertTrue(candidate(10000, 8765) == -1)
    
    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())