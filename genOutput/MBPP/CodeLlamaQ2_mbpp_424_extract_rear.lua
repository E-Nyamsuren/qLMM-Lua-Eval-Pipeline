-- Write a function to extract only the rear index element of each string in the given table.
local function extract_rear(test_tuple)
    return test_tuple[#test_tuple]
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_rear
    lu.assertEquals(candidate({'Mers', 'for', 'Vers'}), {'s', 'r', 's'})
    lu.assertEquals(candidate({'Avenge', 'for', 'People'}), {'e', 'r', 'e'})
    lu.assertEquals(candidate({'Gotta', 'get', 'go'}), {'a', 't', 'o'})
end

os.exit(lu.LuaUnit.run())