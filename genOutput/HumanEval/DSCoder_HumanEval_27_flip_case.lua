-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
  return (string.gsub(string, "%a", function(c)
    return string.upper(c) == c and string.lower(c) or string.upper(c)
  end))
end

lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())