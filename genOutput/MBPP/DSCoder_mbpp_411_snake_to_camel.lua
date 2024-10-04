-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local ret = ""
    local cap = false
    for i = 1, #word do
        if word:sub(i, i) == "_" then
            cap = true
        else
            if cap then
                ret = ret .. string.upper(word:sub(i, i))
                cap = false
            else
                ret = ret .. word:sub(i, i)
            end
        end
    end
    return ret
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())