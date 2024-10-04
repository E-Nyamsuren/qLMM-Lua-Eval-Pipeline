
--[[
Find the length of the longest consecutive sequence of 1s in the binary representation of a non-negative integer.
Parameters:
- n: A non-negative integer (0 ≤ n ≤ 2^64 - 1).

Returns:
- The length of the longest consecutive sequence of 1s in the binary representation of the given integer.

Examples:
extraNumber(7)    -- returns 3
]]--
function find_longest_consecutive_ones_length(n)
    local binary_string = to_binary(n)
    local longest_consecutive_ones_length = 0
    local current_consecutive_ones_length = 0
    for i = 1, #binary_string do
        if binary_string:sub(i, i) == "1" then
            current_consecutive_ones_length = current_consecutive_ones_length + 1
        else
            longest_consecutive_ones_length = math.max(longest_consecutive_ones_length, current_consecutive_ones_length)
            current_consecutive_ones_length = 0
        end
    end
    return math.max(longest_consecutive_ones_length, current_consecutive_ones_length)
end

lu = require('luaunit')

function testFindLongestConsecutiveOnesLength()
    local candidate = find_longest_consecutive_ones_length
    lu.assertTrue(candidate(7) == 3)
    lu.assertTrue(candidate(13) == 2)
    lu.assertTrue(candidate(12345) == 3)
    -- lu.assertTrue(candidate(0xb111101111) == 4)
    lu.assertTrue(candidate(0xFFFFFFFF) == 32)
    lu.assertTrue(candidate(0) == 0)

    -- Uncomment the following line to print a success message
    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())