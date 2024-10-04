-- Write a function to find maximum run of uppercase characters in the given string.
local function max_run_uppercase(test_str)
    local max_run = 0
    local count = 0
    for i in string.gmatch(test_str, "%a") do
        if i:upper() == i then
            count = count + 1
            if count > max_run then
                max_run = count
            end
        else
            count = 0
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_run_uppercase
    lu.assertEquals(candidate('GeMKSForGERksISBESt'), 5)
    lu.assertEquals(candidate('PrECIOusMOVemENTSYT'), 6)
    lu.assertEquals(candidate('GooGLEFluTTER'), 4)
end

os.exit(lu.LuaUnit.run())