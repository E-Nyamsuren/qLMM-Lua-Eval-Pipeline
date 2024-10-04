-- Write a function that takes in a table and element and checks whether all items in the table are equal to the given element.
local function check_element(list, element)
    for _, item in ipairs(list) do
        if item ~= element then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_element
    lu.assertEquals(candidate({'green', 'orange', 'black', 'white'}, 'blue'), false)
    lu.assertEquals(candidate({1, 2, 3, 4}, 7), false)
    lu.assertEquals(candidate({'green', 'green', 'green', 'green'}, 'green'), true)
end

os.exit(lu.LuaUnit.run())