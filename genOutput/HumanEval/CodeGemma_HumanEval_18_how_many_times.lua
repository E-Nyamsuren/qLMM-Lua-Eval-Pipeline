-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
  local substring_length = #substring
  local string_length = #string
  local substring_count = 0
  local substring_index = 1
  while substring_index <= string_length do
    local substring_start_index = string:find(substring, substring_index)
    if substring_start_index then
      substring_count = substring_count + 1
      substring_index = substring_start_index + substring_length
    else
      substring_index = string_length + 1
    end
  end
  return substring_count
end

lu = require('luaunit')

function test_humaneval()
local candidate = how_many_times
    lu.assertEquals(candidate('', 'x'), 0)
    lu.assertEquals(candidate('xyxyxyx', 'x'), 4)
    lu.assertEquals(candidate('cacacacac', 'cac'), 4)
    lu.assertEquals(candidate('john doe', 'john'), 1)
end

os.exit(lu.LuaUnit.run())