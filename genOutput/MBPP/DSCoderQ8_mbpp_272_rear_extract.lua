-- Write a function that takes in a table of tables and returns a table containing the rear element of each table.
local function rear_extract(test_list)
    local result = {}
    for i, v in ipairs(test_list) do
        table.insert(result, v[#v])
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rear_extract
    lu.assertEquals(candidate({{1, 'Rash', 21}, {2, 'Varsha', 20}, {3, 'Kil', 19}}), {21, 20, 19})
    lu.assertEquals(candidate({{1, 'Sai', 36}, {2, 'Ayesha', 25}, {3, 'Salman', 45}}), {36, 25, 45})
    lu.assertEquals(candidate({{1, 'Sudeep', 14}, {2, 'Vandana', 36}, {3, 'Dawood', 56}}), {14, 36, 56})
end

os.exit(lu.LuaUnit.run())