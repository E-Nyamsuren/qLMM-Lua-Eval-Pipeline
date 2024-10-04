-- Write a function to toggle the case of all characters in a string.
local function toggle_string(string)
    local toggled = ''
    for i = 1, #string do
        local c = string.sub(string, i, i)
        if c:match('%u') then
            toggled = toggled .. c:lower()
        else
            toggled = toggled .. c:upper()
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_string
    lu.assertEquals(candidate('Python'), 'pYTHON')
    lu.assertEquals(candidate('Pangram'), 'pANGRAM')
    lu.assertEquals(candidate('LIttLE'), 'liTTle')
end

os.exit(lu.LuaUnit.run())