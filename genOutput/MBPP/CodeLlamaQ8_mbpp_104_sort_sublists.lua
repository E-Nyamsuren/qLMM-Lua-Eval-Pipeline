-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(input_list)
  local output_list = {}
  for _, sublist in ipairs(input_list) do
    table.sort(sublist)
    table.insert(output_list, sublist)
  end
  return output_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{' red ', 'green'}, {'blue ', ' black'}, {' orange', 'brown'}}), {{' red ', 'green'}, {' black', 'blue '}, {' orange', 'brown'}})
    lu.assertEquals(candidate({{'zilver', 'gold'}, {'magnesium', 'aluminium'}, {'steel', 'bronze'}}), {{'gold', 'zilver'}, {'aluminium', 'magnesium'}, {'bronze', 'steel'}})
end

os.exit(lu.LuaUnit.run())