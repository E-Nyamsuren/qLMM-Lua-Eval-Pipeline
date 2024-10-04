-- Write a function to find all possible combinations of the elements of a given table.
local function combinations_list(list1)
    local list2 = {}
    local list3 = {}
    local list4 = {}
    local list5 = {}
    local list6 = {}
    local list7 = {}
    local list8 = {}
    local list9 = {}
    local list10 = {}
    local list11 = {}
    local list12 = {}
    local list13 = {}
    local list14 = {}
    local list15 = {}
    local list16 = {}
    local list17 = {}
    local list18 = {}
    local list19 = {}
    local list20 = {}
    local list21 = {}
    local list22 = {}
    local list23 = {}
    local list24 = {}
    local list25 = {}
    local list26 = {}
    local list27 = {}
    local list28 = {}
    local list29 = {}
    local list30 = {}
    local list31 = {}
    local list32 = {}
    local list33 = {}
    local list34 = {}
    local list35 = {}
    local list36 = {}
    local list37 = {}
    local list38 = {}
    local list39 = {}
    local list40 = {}
    local list41 = {}
    local list42 = {}
    local list43 = {}
    local list44 = {}
    local list45 = {}
    local list46 = {}
    local list47 = {}
    local list48 = {}
    local list49 = {}
    local list50 = {}
    local list51 = {}
    local list52 = {}
    local list53 = {}
    local list54 = {}
    local list55 = {}
    local list56 = {}
    local list57 = {}
    local list58 = {}
    local list59 = {}
    local list60 = {}
    local list61 = {}
    local list62 = {}
    local list

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_list
    lu.assertEquals(candidate({'orange', 'red', 'green', 'blue'}), {{}, {'orange'}, {'red'}, {'red', 'orange'}, {'green'}, {'green', 'orange'}, {'green', 'red'}, {'green', 'red', 'orange'}, {'blue'}, {'blue', 'orange'}, {'blue', 'red'}, {'blue', 'red', 'orange'}, {'blue', 'green'}, {'blue', 'green', 'orange'}, {'blue', 'green', 'red'}, {'blue', 'green', 'red', 'orange'}})
    lu.assertEquals(candidate({'red', 'green', 'blue', 'white', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'blue'}, {'blue', 'red'}, {'blue', 'green'}, {'blue', 'green', 'red'}, {'white'}, {'white', 'red'}, {'white', 'green'}, {'white', 'green', 'red'}, {'white', 'blue'}, {'white', 'blue', 'red'}, {'white', 'blue', 'green'}, {'white', 'blue', 'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'black', 'blue'}, {'black', 'blue', 'red'}, {'black', 'blue', 'green'}, {'black', 'blue', 'green', 'red'}, {'black', 'white'}, {'black', 'white', 'red'}, {'black', 'white', 'green'}, {'black', 'white', 'green', 'red'}, {'black', 'white', 'blue'}, {'black', 'white', 'blue', 'red'}, {'black', 'white', 'blue', 'green'}, {'black', 'white', 'blue', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'blue'}, {'orange', 'blue', 'red'}, {'orange', 'blue', 'green'}, {'orange', 'blue', 'green', 'red'}, {'orange', 'white'}, {'orange', 'white', 'red'}, {'orange', 'white', 'green'}, {'orange', 'white', 'green', 'red'}, {'orange', 'white', 'blue'}, {'orange', 'white', 'blue', 'red'}, {'orange', 'white', 'blue', 'green'}, {'orange', 'white', 'blue', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}, {'orange', 'black', 'blue'}, {'orange', 'black', 'blue', 'red'}, {'orange', 'black', 'blue', 'green'}, {'orange', 'black', 'blue', 'green', 'red'}, {'orange', 'black', 'white'}, {'orange', 'black', 'white', 'red'}, {'orange', 'black', 'white', 'green'}, {'orange', 'black', 'white', 'green', 'red'}, {'orange', 'black', 'white', 'blue'}, {'orange', 'black', 'white', 'blue', 'red'}, {'orange', 'black', 'white', 'blue', 'green'}, {'orange', 'black', 'white', 'blue', 'green', 'red'}})
    lu.assertEquals(candidate({'red', 'green', 'black', 'orange'}), {{}, {'red'}, {'green'}, {'green', 'red'}, {'black'}, {'black', 'red'}, {'black', 'green'}, {'black', 'green', 'red'}, {'orange'}, {'orange', 'red'}, {'orange', 'green'}, {'orange', 'green', 'red'}, {'orange', 'black'}, {'orange', 'black', 'red'}, {'orange', 'black', 'green'}, {'orange', 'black', 'green', 'red'}})
end

os.exit(lu.LuaUnit.run())