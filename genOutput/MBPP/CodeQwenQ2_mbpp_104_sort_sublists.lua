-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(input_list)
    -- Create a new table to store the sorted sublists
    local sorted_list = {}
    
    -- Iterate over each sublist in the input list
    for i, sublist in ipairs(input_list) do
        -- Sort the sublist using the table.sort function
        table.sort(sublist)
        
        -- Add the sorted sublist to the sorted list
        table.insert(sorted_list, sublist)
    end
    
    -- Return the sorted list
    return sorted_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{' red ', 'green'}, {'blue ', ' black'}, {' orange', 'brown'}}), {{' red ', 'green'}, {' black', 'blue '}, {' orange', 'brown'}})
    lu.assertEquals(candidate({{'zilver', 'gold'}, {'magnesium', 'aluminium'}, {'steel', 'bronze'}}), {{'gold', 'zilver'}, {'aluminium', 'magnesium'}, {'bronze', 'steel'}})
end

os.exit(lu.LuaUnit.run())