-- Write a function to find the dissimilar elements in the given two tables.
local function find_dissimilar(test_tup1, test_tup2)
    local dissimilar = {}
    for i = 1, #test_tup1 do
        local found = false
        for j = 1, #test_tup2 do
            if test_tup1[i] == test_tup2[j] then
                found = true
                break
            end
        end
        if not found then
            dissimilar[#dissimilar + 1] = test_tup1[i]
        end
    end
    return dissimilar
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_dissimilar
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {7, 2, 3, 9}), {1, 4, 7, 9})
    lu.assertEquals(candidate({21, 11, 25, 26}, {26, 34, 21, 36}), {34, 36, 11, 25})
end

os.exit(lu.LuaUnit.run())