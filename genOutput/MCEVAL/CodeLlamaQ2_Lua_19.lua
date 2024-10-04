
--[[
Count the number of different permutation schemes for a binary string of length n,
where the number of '1's is m and the number of '0's is n - m.

Parameters:
- n (int): Length of the binary string.
- m (int): Number of '1's in the binary string.

Returns:
int: The total number of different permutation schemes.
--]]
function count_permutations_of_binary_string(n, m)
  local count = 0
  local i = 1
  while i <= n do
    local j = i + 1
    while j <= n do
      local k = j + 1
      while k <= n do
        count = count + 1
        j = k
        k = k + 1
      end
      j = j + 1
    end
    i = i + 1
  end
  return count
end

lu = require('luaunit')

function test_count_permutations_of_binary_string()
    local candidate = count_permutations_of_binary_string
    lu.assertTrue(candidate(2, 0) == 2)
    lu.assertTrue(candidate(2, 1) == 0)
    lu.assertTrue(candidate(3, 0) == 0)
    lu.assertTrue(candidate(3, 1) == 3)
    lu.assertTrue(candidate(3, 2) == 0)
    lu.assertTrue(candidate(30, 2) == 145422675)
    lu.assertTrue(candidate(4, 2) == 4)
    lu.assertTrue(candidate(5, 5) == 1)
    lu.assertTrue(candidate(33, 17) == 13884156)
    lu.assertTrue(candidate(1000, 1000) == 1)
    -- Add more test cases if necessary
end

os.exit(lu.LuaUnit.run())