-- Write a function that takes in a table and an integer n and splits a table for every nth element, returning a table of the resulting tables.
local function list_split(S, step)
    local result = {}
    local i = 1
    local j = 1
    while i <= #S do
        result[j] = {}
        while i <= #S and j <= step do
            table.insert(result[j], S[i])
            i = i + 1
            j = j + 1
        end
        j = j + 1
    end
    return result
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = list_split
    lu.assertEquals(candidate({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n'}, 3), {{'a', 'd', 'g', 'j', 'm'}, {'b', 'e', 'h', 'k', 'n'}, {'c', 'f', 'i', 'l'}})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}, 3), {{1, 4, 7, 10, 13}, {2, 5, 8, 11, 14}, {3, 6, 9, 12}})
    lu.assertEquals(candidate({'python', 'java', 'C', 'C++', 'DBMS', 'SQL'}, 2), {{'python', 'C', 'DBMS'}, {'java', 'C++', 'SQL'}})
end

os.exit(lu.LuaUnit.run())