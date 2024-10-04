-- Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
local function text_lowercase_underscore(text)
    local pattern = "^[a-z]+_[a-z]+$"
    return text:match(pattern) ~= nil
end
return text_lowercase_underscore

lu = require('luaunit')

function test_humaneval()
local candidate = text_lowercase_underscore
    lu.assertEquals(candidate('aab_cbbbc'), true)
    lu.assertEquals(candidate('aab_Abbbc'), false)
    lu.assertEquals(candidate('Aaab_abbbc'), false)
end

os.exit(lu.LuaUnit.run())