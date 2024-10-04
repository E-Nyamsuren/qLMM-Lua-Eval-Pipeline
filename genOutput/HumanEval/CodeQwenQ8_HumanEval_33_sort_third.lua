-- This function takes a table l and returns a table l' such that
-- l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_third({1, 2, 3})
-- {1, 2, 3}
-- >>> sort_third({5, 6, 3, 4, 8, 9, 2})
-- {2, 6, 3, 4, 8, 9, 5}
local function sort_third(l)
    local l_prime = {}
    local third_indices = {}
    for i = 1, #l do
        if i % 3 == 0 then
            table.insert(third_indices, l[i])
        end
    end
    table.sort(third_indices)
    local j = 1
    for i = 1, #l do
        if i % 3 == 0 then
            l_prime[i] = third_indices[j]
            j = j + 1
        else
            l_prime[i] = l[i]
        end
    end
    return l_prime
end
print(sort_third({1, 2, 3}))
print(sort_third({5, 6, 3, 4, 8, 9, 2}))
print(sort_third({10, 11, 12, 13, 14, 15, 16, 17, 18}))
print(sort_third({19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}))
print(sort_third({31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42}))
print(sort_third({43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54}))
print(sort_third

lu = require('luaunit')

function test_humaneval()
local candidate = sort_third
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2}), {2, 6, 3, 4, 8, 9, 5})
    lu.assertEquals(candidate({5, 8, 3, 4, 6, 9, 2}), {2, 8, 3, 4, 6, 9, 5})
    lu.assertEquals(candidate({5, 6, 9, 4, 8, 3, 2}), {2, 6, 9, 4, 8, 3, 5})
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2, 1}), {2, 6, 3, 4, 8, 9, 5, 1})
end

os.exit(lu.LuaUnit.run())