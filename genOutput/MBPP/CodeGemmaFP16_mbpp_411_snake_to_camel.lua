-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
    local camel_case = ""
    local capitalize = false
    for i = 1, #word do
        local char = word:sub(i, i)
        if char == "_" then
            capitalize = true
        elseif capitalize then
            camel_case = camel_case .. char:upper()
            capitalize = false
        else
            camel_case = camel_case .. char
        end
    end
    return camel_case
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())