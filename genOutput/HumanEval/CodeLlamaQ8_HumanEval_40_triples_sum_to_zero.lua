-- triples_sum_to_zero takes a table of integers as an input.
-- it returns true if there are three distinct elements in the table that
-- sum to zero, and false otherwise.
-- >>> triples_sum_to_zero({1, 3, 5, 0})
-- false
-- >>> triples_sum_to_zero({1, 3, -2, 1})
-- true
-- >>> triples_sum_to_zero({1, 2, 3, 7})
-- false
-- >>> triples_sum_to_zero({2, 4, -5, 3, 9, 7})
-- true
-- >>> triples_sum_to_zero({1})
-- false
local function triples_sum_to_zero(l)
    local n = #l
    if n < 3 then
        return false
    end
    local seen = {}
    for i = 1, n do
        local a = l[i]
        for j = i + 1, n do
            local b = l[j]
            if seen[a + b] then
                return true
            end
            seen[a + b] = true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = triples_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, 5, -1}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), true)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({1, 2, 5, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 9, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({1, 3, 5, -100}), false)
    lu.assertEquals(candidate({100, 3, 5, -100}), false)
end

os.exit(lu.LuaUnit.run())