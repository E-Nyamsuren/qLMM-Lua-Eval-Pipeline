-- Given a table of tables, write a function that returns the first value of the table with the smallest second value.
local function index_minimum(test_list)
    local minimum = math.huge
    local index = 0
    for i,v in ipairs(test_list) do
        if v[2] < minimum then
            minimum = v[2]
            index = i
        end
    end
    return index
end

lu = require('luaunit')

function test_humaneval()
local candidate = index_minimum
    lu.assertEquals(candidate({{'Rash', 143}, {'Manjeet', 200}, {'Varsha', 100}}), 'Varsha')
    lu.assertEquals(candidate({{'Yash', 185}, {'Dawood', 125}, {'Sanya', 175}}), 'Dawood')
    lu.assertEquals(candidate({{'Sai', 345}, {'Salman', 145}, {'Ayesha', 96}}), 'Ayesha')
end

os.exit(lu.LuaUnit.run())