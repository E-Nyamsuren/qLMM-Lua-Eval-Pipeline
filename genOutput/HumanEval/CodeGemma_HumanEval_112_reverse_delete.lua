-- Task
-- We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
-- then check if the result string is palindrome.
-- A string is called palindrome if it reads the same backward as forward.
-- You should return a table containing the result string and true/false for the check.
-- Example
-- >>> reverse_delete('abcde', 'ae')
-- {'bcd', false}
-- >>> reverse_delete('abcdef', 'b')
-- {'acdef', false}
-- >>> reverse_delete('abcdedcba', 'ab')
-- {'cdedc', true}
local function reverse_delete(s, c)
  local result = {}
  local s_table = {}
  local c_table = {}
  local s_length = #s
  local c_length = #c
  local i = 1
  local j = 1
  local k = 1
  local l = 1
  local s_index = 1
  local c_index = 1
  local s_index_2 = s_length
  local c_index_2 = c_length
  local s_index_3 = s_length
  local c_index_3 = c_length
  local s_index_4 = s_length
  local c_index_4 = c_length
  local s_index_5 = s_length
  local c_index_5 = c_length
  local s_index_6 = s_length
  local c_index_6 = c_length
  local s_index_7 = s_length
  local c_index_7 = c_length
  local s_index_8 = s_length
  local c_index_8 = c_length
  local s_index_9 = s_length
  local c_index_9 = c_length
  local s_index_10 = s_length
  local c_index_10 = c_length
  local s_index_11 = s_length
  local c_index_11 = c_length
  local s_index_12 = s_length
  local c_index_12 = c_length
  

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_delete
    lu.assertEquals(candidate('abcde', 'ae'), {'bcd', false})
    lu.assertEquals(candidate('abcdef', 'b'), {'acdef', false})
    lu.assertEquals(candidate('abcdedcba', 'ab'), {'cdedc', true})
    lu.assertEquals(candidate('dwik', 'w'), {'dik', false})
    lu.assertEquals(candidate('a', 'a'), {'', true})
    lu.assertEquals(candidate('abcdedcba', ''), {'abcdedcba', true})
    lu.assertEquals(candidate('abcdedcba', 'v'), {'abcdedcba', true})
    lu.assertEquals(candidate('vabba', 'v'), {'abba', true})
    lu.assertEquals(candidate('mamma', 'mia'), {'', true})
end

os.exit(lu.LuaUnit.run())