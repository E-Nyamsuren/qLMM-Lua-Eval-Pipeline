-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(input_list)
    for i = 1, #input_list do
        input_list[i] = sort(input_list[i])
    end
    return inputinput_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{' red ', 'green'}, {'blue ', ' black'}, {' orange', 'brown'}}), {{' red ', 'green'}, {' black', 'blue '}, {' orange', 'brown'}})
    lu.assertEquals(candidate({{'zilver', 'gold'}, {'magnesium', 'aluminium'}, {'steel', 'bronze'}}), {{'gold', 'zilver'}, {'aluminium', 'magnesium'}, {'bronze', 'steel'}})
end

os.exit(lu.LuaUnit.run())