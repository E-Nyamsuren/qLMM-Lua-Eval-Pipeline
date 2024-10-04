-- Write a function to remove characters from the first string which are present in the second string.
local function remove_dirty_chars(string, second_string)
    local new_string = ""
    for i = 1, #string do
        local char = string:sub(i, i)
        if not second_string:find(char) then
            new_string = new_string .. char
        end
    end
    return new_string
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_dirty_chars
    lu.assertEquals(candidate('probasscurve', 'pros'), 'bacuve')
    lu.assertEquals(candidate('digitalindia', 'talent'), 'digiidi')
    lu.assertEquals(candidate('exoticmiles', 'toxic'), 'emles')
end

os.exit(lu.LuaUnit.run())