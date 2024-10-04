-- Write a function to toggle the case of all characters in a string.
local function toggle_string(string)
    local result = ""
    for i = 1, #string do
        local char = string:sub(i, i)
        if char:match("%l") then
            result = result .. char:upper()
        elseif char:match("%u") then
            result = result .. char:lower()
        else
            result = result .. char
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_string
    lu.assertEquals(candidate('Python'), 'pYTHON')
    lu.assertEquals(candidate('Pangram'), 'pANGRAM')
    lu.assertEquals(candidate('LIttLE'), 'liTTle')
end

os.exit(lu.LuaUnit.run())