-- Write a function that matches a word containing 'z'.
local function text_match_wordz(text)
  local pattern = "%w*z%w*"
  return text:match(pattern)
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz
    lu.assertEquals(candidate('pythonz.'), true)
    lu.assertEquals(candidate('xyz.'), true)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())