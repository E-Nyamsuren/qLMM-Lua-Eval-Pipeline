-- Given a table of tables, write a function that returns the first value of the table with the smallest second value.
local function index_minimum(test_list)
    local min_val = nil
    local min_key = nil
    for k,v in pairs(test_list) do
        if min_val == nil or v < min_val then
            min_val = v
            min_key = k
        end
    end
    return min_key
end

lu = require('luaunit')

function test_humaneval()
local candidate = index_minimum
    lu.assertEquals(candidate({{'Rash', 143}, {'Manjeet', 200}, {'Varsha', 100}}), 'Varsha')
    lu.assertEquals(candidate({{'Yash', 185}, {'Dawood', 125}, {'Sanya', 175}}), 'Dawood')
    lu.assertEquals(candidate({{'Sai', 345}, {'Salman', 145}, {'Ayesha', 96}}), 'Ayesha')
end

os.exit(lu.LuaUnit.run())