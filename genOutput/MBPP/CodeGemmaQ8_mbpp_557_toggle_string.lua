-- Write a function to toggle the case of all characters in a string.
local function toggle_string(string)
    local new_string = ""
    for i = 1, #string do
        local char = string:sub(i, i)
        if char:match("%a") then
            if char:match("%u") then
                new_string = new_string .. char:lower()
            else
                new_string = new_string .. char:upper()
            end
        else
            new_string = new_string .. char
        end
    end
    return new_string
end

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_string
    lu.assertEquals(candidate('Python'), 'pYTHON')
    lu.assertEquals(candidate('Pangram'), 'pANGRAM')
    lu.assertEquals(candidate('LIttLE'), 'liTTle')
end

os.exit(lu.LuaUnit.run())