-- Given a table of numbers, return whether or not they are sorted
-- in ascending order. If table has more than 1 duplicate of the same
-- number, return false. Assume no negative numbers and only integers.
-- Examples
-- >>> is_sorted({5})
-- true
-- >>> is_sorted({1, 2, 3, 4, 5})
-- true
-- >>> is_sorted({1, 3, 2, 4, 5})
-- false
-- >>> is_sorted({1, 2, 3, 4, 5, 6})
-- true
-- >>> is_sorted({1, 2, 3, 4, 5, 6, 7})
-- true
-- >>> is_sorted({1, 3, 2, 4, 5, 6, 7})
-- false
-- >>> is_sorted({1, 2, 2, 3, 3, 4})
-- true
-- >>> is_sorted({1, 2, 2, 2, 3, 4})
-- false
local function is_sorted(lst)
    local sorted = true
    for i = 1, #lst - 1 do
        if lst[i] > lst[i + 1] then
            sorted = false
            break
        end
    end
    return sorted
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = is_sorted
    lu.assertEquals(candidate({5}), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), true)
    lu.assertEquals(candidate({1, 3, 2, 4, 5}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7}), true)
    lu.assertEquals(candidate({1, 3, 2, 4, 5, 6, 7}), false)
    lu.assertEquals(candidate({}), true)
    lu.assertEquals(candidate({1}), true)
    lu.assertEquals(candidate({3, 2, 1}), false)
    lu.assertEquals(candidate({1, 2, 2, 2, 3, 4}), false)
    lu.assertEquals(candidate({1, 2, 3, 3, 3, 4}), false)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4}), true)
    lu.assertEquals(candidate({1, 2, 3, 4}), true)
end

os.exit(lu.LuaUnit.run())