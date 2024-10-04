-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local camel_word = ""
    for w in word:gmatch("%w+") do
        camel_word = camel_word .. w:sub(1,1):upper() .. w:sub(2)
    end
    return camel_word
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())