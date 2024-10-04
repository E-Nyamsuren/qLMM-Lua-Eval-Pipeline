-- Write a luathon function to check whether the length of the word is odd or not.
local function word_len(s)
    local len = #s
    if len % 2 == 0 then
        return "even"
    else
        return "odd"
    end
end
print(word_len("hello"))
print(word_len("world"))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = word_len
    lu.assertEquals(candidate('Hadoop'), false)
    lu.assertEquals(candidate('great'), true)
    lu.assertEquals(candidate('structure'), true)
end

os.exit(lu.LuaUnit.run())