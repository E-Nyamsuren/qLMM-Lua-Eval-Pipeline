-- Write a function to remove characters from the first string which are present in the second string.
local function remove_dirty_chars(string, second_string)
    local clean_string = ""
    for i = 1, #string do
        if not string.find(second_string, string.sub(string, i, i)) then
            clean_string = clean_string .. string.sub(string, i, i)
        end
    end
    return clean_string
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_dirty_chars
    lu.assertEquals(candidate('probasscurve', 'pros'), 'bacuve')
    lu.assertEquals(candidate('digitalindia', 'talent'), 'digiidi')
    lu.assertEquals(candidate('exoticmiles', 'toxic'), 'emles')
end

os.exit(lu.LuaUnit.run())