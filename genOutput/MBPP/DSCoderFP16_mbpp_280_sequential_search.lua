-- Write a function that takes in a table and element and returns a table containing a boolean that indicates if the element is in the table and the index position of the element (or -1 if the element is not found).
local function sequential_search(dlist, item)
    for i = 1, #dlist do
        if dlist[i] == item then
            return {true, i}
        end
    end
    return {false, -1}
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequential_search
    lu.assertEquals(candidate({11, 23, 58, 31, 56, 77, 43, 12, 65, 19}, 31), {true, 3})
    lu.assertEquals(candidate({12, 32, 45, 62, 35, 47, 44, 61}, 61), {true, 7})
    lu.assertEquals(candidate({9, 10, 17, 19, 22, 39, 48, 56}, 48), {true, 6})
end

os.exit(lu.LuaUnit.run())