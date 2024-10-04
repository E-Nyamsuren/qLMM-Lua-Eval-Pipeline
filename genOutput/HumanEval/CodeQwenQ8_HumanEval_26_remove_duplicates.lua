-- From a table of integers, remove all elements that occur more than once.
-- Keep order of elements left the same as in the input.
-- >>> remove_duplicates({1, 2, 3, 2, 4})
-- {1, 3, 4}
local function remove_duplicates(numbers)
    local counts = {}
    for _, number in ipairs(numbers) do
        counts[number] = (counts[number] or 0) + 1
    end
    local result = {}
    for _, number in ipairs(numbers) do
        if counts[number] == 1 then
            table.insert(result, number)
        end
    end
    return result
end
print(table.concat(remove_duplicates({1, 2, 3, 2, 4}), ", ")) -- 1, 3, 4
print(table.concat(remove_duplicates({5, 6, 7, 6, 8}), ", ")) -- 5, 7, 8
print(table.concat(remove_duplicates({9, 10, 11, 10, 12}), ", ")) -- 9, 11, 12
print(table.concat(remove_duplicates({13, 14, 15, 14, 16}), ", ")) -- 13, 15, 16
print(table.concat(remove_duplicates({17, 18, 19, 18, 20}), ", ")) -- 17, 19, 20
print(table.concat(remove_duplicates({21, 22, 23, 22, 24}), ", ")) -- 21, 23, 24
print(table.concat(remove_duplicates({25, 26, 27, 26, 28}), ", ")) -- 25, 27, 28
print(table.concat(remove_duplicates({29, 30, 31, 30, 32}), ", ")) -- 29, 31, 32
print(table.concat(remove_duplicates({33, 34, 35, 34, 36}), ", "

lu = require('luaunit')

function test_humaneval()
local candidate = remove_duplicates
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 3, 5}), {1, 4, 5})
end

os.exit(lu.LuaUnit.run())