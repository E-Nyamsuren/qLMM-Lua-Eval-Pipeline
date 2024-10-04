-- Write a luathon function to convert a given string to uppercase.
local function is_upper(string)

  -- Check if the string is empty
  if string == "" then
    return false
  end

lu = require('luaunit')

function test_humaneval()
local candidate = is_upper
    lu.assertEquals(candidate('person'), 'PERSON')
    lu.assertEquals(candidate('final'), 'FINAL')
    lu.assertEquals(candidate('Valid'), 'VALID')
end

os.exit(lu.LuaUnit.run())