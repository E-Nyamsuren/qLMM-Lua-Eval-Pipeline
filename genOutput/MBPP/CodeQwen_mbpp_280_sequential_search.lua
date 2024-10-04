-- Write a function that takes in a table and element and returns a table containing a boolean that indicates if the element is in the table and the index position of the element (or -1 if the element is not found).
local function sequential_search(dlist, item)
    for i = 1, #dlist do
        if dlist[i] == item then
            return true, i
        end
    end
    return false, -1
end
print(sequential_search({1, 2, 3, 4, 5}, 3)) -- Should print: true, 3
print(sequential_search({1, 2, 3, 4, 5}, 6)) -- Should print: false, -1
print(sequential_search({}, 1)) -- Should print: false, -1
print(sequential_search({1, 2, 3, 4, 5}, 1)) -- Should print: true, 1
print(sequential_search({1, 2, 3, 4, 5}, 5)) -- Should print: true, 5
print(sequential_search({1, 2, 3, 4, 5}, 2)) -- Should print: true, 2
print(sequential_search({1, 2, 3, 4, 5}, 4)) -- Should print: true, 4
print(sequential_search({1, 2, 3, 4, 5}, 3)) -- Should print: true, 3
print(sequential_search({1, 2, 3, 4, 5}, 0)) -- Should print: false, -1
print(sequential_search({1, 2, 3, 4, 5}, -1)) -- Should print: false, -1
print(sequential_search({1, 2, 3, 4, 5}, 6)) -- Should print: false, -1
print(sequential_search({1, 2, 3, 4, 5}, 7)) -- Should print: false, -1
print(sequential_search({1, 2, 3, 4, 5}, 8)) -- Should print

lu = require('luaunit')

function test_humaneval()
local candidate = sequential_search
    lu.assertEquals(candidate({11, 23, 58, 31, 56, 77, 43, 12, 65, 19}, 31), {true, 3})
    lu.assertEquals(candidate({12, 32, 45, 62, 35, 47, 44, 61}, 61), {true, 7})
    lu.assertEquals(candidate({9, 10, 17, 19, 22, 39, 48, 56}, 48), {true, 6})
end

os.exit(lu.LuaUnit.run())