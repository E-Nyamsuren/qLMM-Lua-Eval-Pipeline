-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
  local text_length = string.len(text)
  local text_start = string.sub(text, 1, 1)
  local text_end = string.sub(text, text_length, text_length)
  local text_middle = string.sub(text, 2, text_length - 1)
  if text_start == 'z' and text_end == 'z' then
    return false
  elseif text_middle:find('z') then
    return true
  else
    return false
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())