-- This function takes a table l and returns a table l' such that
-- l' is identical to l in the odd indicies, while its values at the even indicies are equal
-- to the values of the even indicies of l, but sorted.
-- >>> sort_even({1, 2, 3})
-- {1, 2, 3}
-- >>> sort_even({5, 6, 3, 4})
-- {3, 6, 5, 4}
local function sort_even(l)
    local l_prime = {}
    for i = 1, #l do
        if i % 2 == 0 then
            table.insert(l_prime, l[i])
        else
            table.insert(l_prime, l[i])
        end
    end
    table.sort(l_prime, function(a, b) return a < b end)
    return l_prime
end
print(sort_even({1, 2, 3})) -- {1, 2, 3}
print(sort_even({5, 6, 3, 4})) -- {3, 6, 5, 4}
print(sort_even({9, 8, 7, 6, 5, 4})) -- {5, 8, 7, 6, 9, 4}
print(sort_even({2, 4, 6, 8, 10})) -- {2, 4, 6, 8, 10}
print(sort_even({1, 3, 5, 7, 9})) -- {1, 3, 5, 7, 9}
print(sort_even({})) -- {}
print(sort_even({1})) -- {1}
print(sort_even({1, 2})) -- {1, 2}
print(sort_even({1, 3, 5})) -- {1, 3, 5}
print(sort_even({1, 2, 3, 4})) -- {1, 2, 3, 4}
print(sort_even({1, 3, 5, 7})) -- {1,

lu = require('luaunit')

function test_humaneval()
local candidate = sort_even
    lu.assertEquals(candidate({1, 2, 3}), {1, 2, 3})
    lu.assertEquals(candidate({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}), {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123})
    lu.assertEquals(candidate({5, 8, -12, 4, 23, 2, 3, 11, 12, -10}), {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10})
end

os.exit(lu.LuaUnit.run())