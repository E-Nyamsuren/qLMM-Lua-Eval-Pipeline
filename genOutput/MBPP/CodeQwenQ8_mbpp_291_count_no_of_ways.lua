-- Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
local function count_no_of_ways(n, k)
    -- If there are no posts, return 0
    if n == 0 then
        return 0
    end
    -- If there is only one post, return k
    if n == 1 then
        return k
    end
    -- Initialize the variables
    local same, diff = k, k * (k - 1)
    -- Calculate the number of ways
    for i = 3 to n do
        same = diff
        diff = (k - 1) * (same + diff)
    end
    -- Return the total number of ways
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