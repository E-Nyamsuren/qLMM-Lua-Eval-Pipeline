
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
  local binary_representation = tostring(n)
  local longest_sequence_length = 0
  local current_sequence_length = 0
  for i = 1, #binary_representation do
    if binary_representation:sub(i, i) == '1' then
      current_sequence_length = current_sequence_length + 1
      if current_sequence_length > longest_sequence_length then
        longest_sequence_length = current_sequence_length
      end
    else
      current_sequence_length = 0
    end
  end
  return longest_sequence_length
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