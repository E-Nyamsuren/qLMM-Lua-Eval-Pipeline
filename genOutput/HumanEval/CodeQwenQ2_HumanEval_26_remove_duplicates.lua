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
print(table.unpack(remove_duplicates({1, 2, 3, 2, 4})))

lu = require('luaunit')

function test_humaneval()
local candidate = remove_duplicates
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 3, 5}), {1, 4, 5})
end

os.exit(lu.LuaUnit.run())