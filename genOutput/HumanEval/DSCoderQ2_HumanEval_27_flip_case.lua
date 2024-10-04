-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
  return string:gsub('.', function(c)
    return string.match(c, '%l')
      and string.upper(c)
      or string.lower(c)
  end)
end

lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())