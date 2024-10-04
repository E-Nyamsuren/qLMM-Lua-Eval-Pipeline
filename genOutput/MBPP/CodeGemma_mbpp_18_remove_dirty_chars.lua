-- Write a function to remove characters from the first string which are present in the second string.
local function remove_dirty_chars(string, second_string)
    local dirty_chars = {}
    for i = 1, #second_string do
        dirty_chars[second_string:sub(i, i)] = true
    end
    local result = {}
    for i = 1, #string do
        if not dirty_chars[string:sub(i, i)] then
            result[#result + 1] = string:sub(i, i)
        end
    end
    return table.concat(result)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_dirty_chars
    lu.assertEquals(candidate('probasscurve', 'pros'), 'bacuve')
    lu.assertEquals(candidate('digitalindia', 'talent'), 'digiidi')
    lu.assertEquals(candidate('exoticmiles', 'toxic'), 'emles')
end

os.exit(lu.LuaUnit.run())