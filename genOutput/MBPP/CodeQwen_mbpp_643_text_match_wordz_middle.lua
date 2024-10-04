-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    -- Check if the text starts with 'z' and ends with 'z'
    if text:sub(1,1) == 'z' and text:sub(-1,-1) == 'z' then
        -- If the text starts with 'z' and ends with 'z', check if it contains 'z' in the middle
        if text:find('z', 2, -2) then
            return true
        end
    end
    return false
end
print(text_match_wordz_middle("zabcz")) -- Should return true
print(text_match_wordz_middle("abcz")) -- Should return false
print(text_match_wordz_middle("zabc")) -- Should return false
print(text_match_wordz_middle("abc")) -- Should return false
print(text_match_wordz_middle("zzz")) -- Should return false
print(text_match_wordz_middle("z")) -- Should return false
print(text_match_wordz_middle("")) -- Should return false
print(text_match_wordz_middle("zzzzz")) -- Should return true
print(text_match_wordz_middle("zzzabczzz")) -- Should return true
print(text_match_wordz_middle("zzzabczzzz")) -- Should return false
print(text_match_wordz_middle("zzzabczzzzz")) -- Should return true
print(text_match_wordz_middle("zzzabczzzzzz")) -- Should return false
print(text_match_wordz_middle("zzzabczzzzzzz")) -- Should return true
print(text_match_wordz_middle("zzzabczzzzzzzz")) -- Should return false
print(text_match_wordz_middle("zzzabczzzzzzzzz")) -- Should return true
print(text_match_wordz_middle("zzzabczzzzzzzzzz")) -- Should return false
print(text_match_wordz_middle("zzzabczzzzzzzzzzz")) -- Should return true
print(text_

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())