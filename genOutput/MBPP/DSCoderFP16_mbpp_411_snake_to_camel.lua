-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local upper = string.upper(word:sub(1,1))
    local lower = string.lower(word:sub(2, -1))
    return upper .. lower
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())