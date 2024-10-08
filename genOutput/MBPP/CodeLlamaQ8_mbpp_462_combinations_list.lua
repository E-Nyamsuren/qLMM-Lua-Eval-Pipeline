-- Write a function to find all possible combinations of the elements of a given table.
local function combinations_list(list1)
    local function combinations_list_aux(list1, list2, result)
        if #list1 == 0 then
            return result
        end
        local result2 = {}
        for i = 1, #list2 do
            local result3 = {}
            for j = 1, #result do
                table.insert(result3, result[j])
            end
            table.insert(result3, list2[i])
            table.insert(result2, result3)
        end
        return combinations_list_aux(list1, list2, result2)
    end
    return combinations_list_aux(list1, list1, {})
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_list
    lu.assertEquals(candidate({'orange', 'red', 'green', 'blue'}), {{}, {'orange'}, {'red'}, {'red', 'orange'}, {'green'}, {'green', 'orange'}, {'green', 'red'}, {'green', 'red', 'orange'}, {'blue'}, {'blue', 'orange'}, {'blue', 'red'}, {'blue', 'red', 'orange'}, {'blue', 'green'}, {'blue', 'green', 'orange'}, {'blue', 'green', 'red'}, {'blue', 'green', 'red', 'orange'}})
    lu.assertEquals(candidate({'red', 'green', 'blue', 'white', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'blue'}, {'blue', 'red'}, {'blue', 'green'}, {'blue', 'green', 'red'}, {'white'}, {'white', 'red'}, {'white', 'green'}, {'white', 'green', 'red'}, {'white', 'blue'}, {'white', 'blue', 'red'}, {'white', 'blue', 'green'}, {'white', 'blue', 'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'black', 'blue'}, {'black', 'blue', 'red'}, {'black', 'blue', 'green'}, {'black', 'blue', 'green', 'red'}, {'black', 'white'}, {'black', 'white', 'red'}, {'black', 'white', 'green'}, {'black', 'white', 'green', 'red'}, {'black', 'white', 'blue'}, {'black', 'white', 'blue', 'red'}, {'black', 'white', 'blue', 'green'}, {'black', 'white', 'blue', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'blue'}, {'orange', 'blue', 'red'}, {'orange', 'blue', 'green'}, {'orange', 'blue', 'green', 'red'}, {'orange', 'white'}, {'orange', 'white', 'red'}, {'orange', 'white', 'green'}, {'orange', 'white', 'green', 'red'}, {'orange', 'white', 'blue'}, {'orange', 'white', 'blue', 'red'}, {'orange', 'white', 'blue', 'green'}, {'orange', 'white', 'blue', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}, {'orange', 'black', 'blue'}, {'orange', 'black', 'blue', 'red'}, {'orange', 'black', 'blue', 'green'}, {'orange', 'black', 'blue', 'green', 'red'}, {'orange', 'black', 'white'}, {'orange', 'black', 'white', 'red'}, {'orange', 'black', 'white', 'green'}, {'orange', 'black', 'white', 'green', 'red'}, {'orange', 'black', 'white', 'blue'}, {'orange', 'black', 'white', 'blue', 'red'}, {'orange', 'black', 'white', 'blue', 'green'}, {'orange', 'black', 'white', 'blue', 'green', 'red'}})
    lu.assertEquals(candidate({'red', 'green', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}})
end

os.exit(lu.LuaUnit.run())