-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    return string.find(text, "z") ~= nil and string.find(text, "^z") == nil and string.find(text, "z$") == nil
end
print(text_match_wordz_middle("zest")) -- true
print(text_match_wordz_middle("zebra")) -- false
print(text_match_wordz_middle("zanzibar")) -- true
print(text_match_wordz_middle("zzz")) -- false
print(text_match_wordz_middle("z")) -- true
print(text_match_wordz_middle("zzzz")) -- false
print(text_match_wordz_middle("abc")) -- false
print(text_match_wordz_middle("zabcz")) -- true
print(text_match_wordz_middle("zzzabc")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczz")) -- false
print(text_match_wordz_middle("abcz")) -- true
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz_middle("abczzz")) -- false
print(text_match_wordz

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())