-- Write a function to check if all the elements in table have same data type or not.
local function check_type(test_tuple)
    local type_of_first_element = type(test_tuple[1])
    for i = 2, #test_tuple do
        if type(test_tuple[i]) ~= type_of_first_element then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_type
    lu.assertEquals(candidate({5, 6, 7, 3, 5, 6}), true)
    lu.assertEquals(candidate({1, 2, '4'}), false)
    lu.assertEquals(candidate({3, 2, 1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())