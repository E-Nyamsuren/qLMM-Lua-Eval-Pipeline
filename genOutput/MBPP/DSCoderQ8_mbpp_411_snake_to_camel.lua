-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local ret = ""
    local cap = false
    for i = 1, #word do
        local c = word:sub(i, i)
        if c == "_" then
            cap = true
        else
            if cap then
                ret = ret .. string.upper(c)
                cap = false
            else
                ret = ret .. c
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