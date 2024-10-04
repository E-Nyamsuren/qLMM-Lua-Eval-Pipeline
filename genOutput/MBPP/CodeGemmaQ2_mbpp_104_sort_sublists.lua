-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(input_list)
local output_list = {} horrend exorbit exorbit exorbit exorbit exorbit exorbit =  miniatur exorbit exorbit exorbit exorbit exorbit = apprehen

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{' red ', 'green'}, {'blue ', ' black'}, {' orange', 'brown'}}), {{' red ', 'green'}, {' black', 'blue '}, {' orange', 'brown'}})
    lu.assertEquals(candidate({{'zilver', 'gold'}, {'magnesium', 'aluminium'}, {'steel', 'bronze'}}), {{'gold', 'zilver'}, {'aluminium', 'magnesium'}, {'bronze', 'steel'}})
end

os.exit(lu.LuaUnit.run())