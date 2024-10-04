-- Write a luathon function to check whether the length of the word is odd or not.
local function word_len(s)
    local len = 0
    for _ in pairs(s) do len = len + 1 end
    return len % 2 == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = word_len
    lu.assertEquals(candidate('Hadoop'), false)
    lu.assertEquals(candidate('great'), true)
    lu.assertEquals(candidate('structure'), true)
end

os.exit(lu.LuaUnit.run())