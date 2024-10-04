-- Given a table arr of integers and a positive integer k, return a sorted table 
-- of length k with the maximum k numbers in arr.
-- Example 1:
-- >>> maximum({-3, -4, 5}, 3)
-- {-4, -3, 5}
-- Example 2:
-- >>> maximum({4, -4, 4}, 2)
-- {4, 4}
-- Example 3:
-- >>> maximum({-3, 2, 1, 2, -1, -2, 1}, 1)
-- {2}
-- Note:
--     1. The length of the table will be in the range of [1, 1000].
--     2. The elements in the table will be in the range of [-1000, 1000].
--     3. 0 <= k <= len(arr)
local function maximum(arr, k)
    local heap = Heap()
    for _, v in ipairs(arr) do
        heap:push(v)
        if heap:size() > k then
            heap:pop()
        end
    end
    local res = {}
    while not heap:empty() do
        res[#res+1] = heap:top()
        heap:pop()
    end
    table.sort(res)
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = maximum
    lu.assertEquals(candidate({-3, -4, 5}, 3), {-4, -3, 5})
    lu.assertEquals(candidate({4, -4, 4}, 2), {4, 4})
    lu.assertEquals(candidate({-3, 2, 1, 2, -1, -2, 1}, 1), {2})
    lu.assertEquals(candidate({123, -123, 20, 0, 1, 2, -3}, 3), {2, 20, 123})
    lu.assertEquals(candidate({-123, 20, 0, 1, 2, -3}, 4), {0, 1, 2, 20})
    lu.assertEquals(candidate({5, 15, 0, 3, -13, -8, 0}, 7), {-13, -8, 0, 0, 3, 5, 15})
    lu.assertEquals(candidate({-1, 0, 2, 5, 3, -10}, 2), {3, 5})
    lu.assertEquals(candidate({1, 0, 5, -7}, 1), {5})
    lu.assertEquals(candidate({4, -4}, 2), {-4, 4})
    lu.assertEquals(candidate({-10, 10}, 2), {-10, 10})
    lu.assertEquals(candidate({1, 2, 3, -23, 243, -400, 0}, 0), {})
end

os.exit(lu.LuaUnit.run())