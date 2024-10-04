-- Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
local function count_no_of_ways(n, k)
    if n == 1 then
        return k
    end
    if n == 2 then
        return k * k
    end
    same = k
    diff = k * (k - 1)
    for i = 3, n do
        local prev_same = same
        same = diff
        diff = (same + prev_same) * (k - 1)
    end
    return same + diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_no_of_ways
    lu.assertEquals(candidate(2, 4), 16)
    lu.assertEquals(candidate(3, 2), 6)
    lu.assertEquals(candidate(4, 4), 228)
end

os.exit(lu.LuaUnit.run())