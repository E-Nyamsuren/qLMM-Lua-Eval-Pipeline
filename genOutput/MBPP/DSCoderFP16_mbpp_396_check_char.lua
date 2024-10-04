-- Write a function to check whether the given string starts and ends with the same character or not.
local function check_char(string)

  -- Check if the string is empty
  if string == "" then
    return false
  end

lu = require('luaunit')

function test_humaneval()
local candidate = check_char
    lu.assertEquals(candidate('abba'), 'Valid')
    lu.assertEquals(candidate('a'), 'Valid')
    lu.assertEquals(candidate('abcd'), 'Invalid')
end

os.exit(lu.LuaUnit.run())