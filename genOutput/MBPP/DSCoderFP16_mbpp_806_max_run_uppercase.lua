-- Write a function to find maximum run of uppercase characters in the given string.
local function max_run_uppercase(test_str)
    local max_run = 0
    local current_run = 1
    local last_is_upper = false
    for i = 1, #test_str do
        local c = test_str:sub(i,i)
        if c:match("%u") then
            if last_is_upper then
                current_run = current_run + 1
            else
                if current_run > max_run then
                    max_run = current_run
                end
                current_run = 1
            end
            last_is_upper = true
        else
            last_is_upper = false
        end
    end
    if current_run > max_run then
        max_run = current_run
    end
    return max_run
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_run_uppercase
    lu.assertEquals(candidate('GeMKSForGERksISBESt'), 5)
    lu.assertEquals(candidate('PrECIOusMOVemENTSYT'), 6)
    lu.assertEquals(candidate('GooGLEFluTTER'), 4)
end

os.exit(lu.LuaUnit.run())