-- Write a function to find maximum run of uppercase characters in the given string.
local function max_run_uppercase(test_str)
    local max_count = 0
    local curr_count = 0
    for i = 1, #test_str do
        local char = test_str:sub(i, i)
        if char:match("%u") then
            curr_count = curr_count + 1
            if curr_count > max_count then
                max_count = curr_count
            end
        else
            curr_count = 0
        end
    end
    return max_count
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_run_uppercase
    lu.assertEquals(candidate('GeMKSForGERksISBESt'), 5)
    lu.assertEquals(candidate('PrECIOusMOVemENTSYT'), 6)
    lu.assertEquals(candidate('GooGLEFluTTER'), 4)
end

os.exit(lu.LuaUnit.run())