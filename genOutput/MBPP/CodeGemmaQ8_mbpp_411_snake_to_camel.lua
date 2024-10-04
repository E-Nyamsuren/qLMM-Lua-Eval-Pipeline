-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local new_word = ""
    for i = 1, #word do
        if word:sub(i, i) == "_" then
            new_word = new_word .. word:sub(i + 1, i + 1):upper()
        else
            new_word = new_word .. word:sub(i, i)
        end
    end
    return new_word
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())