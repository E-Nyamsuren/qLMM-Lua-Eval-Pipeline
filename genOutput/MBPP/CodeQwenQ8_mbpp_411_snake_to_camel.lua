-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local result = ""
    for i = 1, #word do
        local char = word:sub(i, i)
        if char == "_" then
            result = result .. word:sub(i + 1, i + 1):upper()
        else
            result = result .. char
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())