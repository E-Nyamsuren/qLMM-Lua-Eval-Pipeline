-- Write a function to remove characters from the first string which are present in the second string.
local function remove_dirty_chars(string, second_string)
    for i = 1, #second_string do
        local c = second_string:sub(i, i)
        string = string:gsub("[" .. c .. "]", "")
    end
    return string
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_dirty_chars
    lu.assertEquals(candidate('probasscurve', 'pros'), 'bacuve')
    lu.assertEquals(candidate('digitalindia', 'talent'), 'digiidi')
    lu.assertEquals(candidate('exoticmiles', 'toxic'), 'emles')
end

os.exit(lu.LuaUnit.run())