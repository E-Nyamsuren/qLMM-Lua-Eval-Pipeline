-- Write a function to find maximum run of uppercase characters in the given string.
local function max_run_uppercase(test_str)
    local max_run = 0
    local current_run = 0
    for i = 1, #test_str do
        if string.upper(test_str:sub(i, i)) == test_str:sub(i, i) then
            current_run = current_run + 1
        else
            if current_run > max_run then
                max_run = current_run
            end
            current_run = 0
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