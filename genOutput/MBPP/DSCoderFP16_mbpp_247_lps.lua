-- Write a function to find the length of the longest palindromic subsequence in the given string.
local function lps(str)

  -- Create a table to store the lengths of the longest palindromic subsequence for all substrings of the string
  local lengths = {}

lu = require('luaunit')

function test_humaneval()
local candidate = lps
    lu.assertEquals(candidate('TENS FOR TENS'), 5)
    lu.assertEquals(candidate('CARDIO FOR CARDS'), 7)
    lu.assertEquals(candidate('PART OF THE JOURNEY IS PART'), 9)
end

os.exit(lu.LuaUnit.run())