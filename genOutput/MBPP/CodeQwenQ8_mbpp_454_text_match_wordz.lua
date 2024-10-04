-- Write a function that matches a word containing 'z'.
local function text_match_wordz(text)
  return string.match(text, "%w*z%w*")
end
print(text_match_wordz("The zebra is a wild animal.")) -- Output: zebra
print(text_match_wordz("The dog is a loyal animal.")) -- Output: None
print(text_match_wordz("The zoo contains many animals.")) -- Output: zoo
print(text_match_wordz("The sun sets in the west.")) -- Output: None
print(text_match_wordz("The zigzag pattern is interesting.")) -- Output: zigzag
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is a fierce animal.")) -- Output: zealot
print(text_match_wordz("The zealot is

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz
    lu.assertEquals(candidate('pythonz.'), true)
    lu.assertEquals(candidate('xyz.'), true)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())