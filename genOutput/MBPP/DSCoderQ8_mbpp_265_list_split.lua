-- Write a function that takes in a table and an integer n and splits a table for every nth element, returning a table of the resulting tables.
local function list_split(S, step)
    local result = {}
    local temp = {}
    local counter = 0
    for k, v in pairs(S) do
        counter = counter + 1
        if counter % step == 1 then
            if #temp ~= 0 then
                result[#result+1] = temp
            end
            temp = {}
        end
        temp[k] = v
    end
    if #temp ~= 0 then
        result[#result+1] = temp
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = list_split
    lu.assertEquals(candidate({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n'}, 3), {{'a', 'd', 'g', 'j', 'm'}, {'b', 'e', 'h', 'k', 'n'}, {'c', 'f', 'i', 'l'}})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}, 3), {{1, 4, 7, 10, 13}, {2, 5, 8, 11, 14}, {3, 6, 9, 12}})
    lu.assertEquals(candidate({'python', 'java', 'C', 'C++', 'DBMS', 'SQL'}, 2), {{'python', 'C', 'DBMS'}, {'java', 'C++', 'SQL'}})
end

os.exit(lu.LuaUnit.run())