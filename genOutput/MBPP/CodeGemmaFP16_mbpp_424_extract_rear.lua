-- Write a function to extract only the rear index element of each string in the given table.
local function extract_rear(test_tuple)
    local result = {}
    for _, tuple in ipairs(test_tuple) do
        local rear_index = string.len(tuple) - 1
        result[#result + 1] = string.sub(tuple, rear_index)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_rear
    lu.assertEquals(candidate({'Mers', 'for', 'Vers'}), {'s', 'r', 's'})
    lu.assertEquals(candidate({'Avenge', 'for', 'People'}), {'e', 'r', 'e'})
    lu.assertEquals(candidate({'Gotta', 'get', 'go'}), {'a', 't', 'o'})
end

os.exit(lu.LuaUnit.run())