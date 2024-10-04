-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    local pattern = "^[^z]*z[^z]*$"
    return text:match(pattern)
end
print(text_match_wordz_middle("zzz"))
print(text_match_wordz_middle("z"))
print(text_match_wordz_middle("zzzz"))
print(text_match_wordz_middle("zZzz"))
print(text_match_wordz_middle("zz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print(text_match_wordz_middle("zzzzz"))
print

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())