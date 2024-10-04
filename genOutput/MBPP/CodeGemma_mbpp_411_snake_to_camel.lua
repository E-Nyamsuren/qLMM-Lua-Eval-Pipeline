-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local camel = word:gsub('(%l)(%u)', function(a, b) return a..'_'..b end)
    return camel:gsub('(%l)(%u)', function(a, b) return a..b end)
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())