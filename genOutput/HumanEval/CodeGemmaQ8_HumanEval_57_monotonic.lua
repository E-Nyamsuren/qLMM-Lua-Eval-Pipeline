-- Return true is table elements are monotonically increasing or decreasing.
-- >>> monotonic({1, 2, 4, 20})
-- true
-- >>> monotonic({1, 20, 4, 10})
-- false
-- >>> monotonic({4, 1, 0, -10})
-- true
local function monotonic(l)
    local i = 1
    local j = 2
    local k = 3
    local n = #l
    while k <= n do
        if l[i] < l[j] and l[j] < l[k] then
            i = j
            j = k
            k = k + 1
        elseif l[i] > l[j] and l[j] > l[k] then
            i = j
            j = k
            k = k + 1
        else
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = monotonic
    lu.assertEquals(candidate({1, 2, 4, 10}), true)
    lu.assertEquals(candidate({1, 2, 4, 20}), true)
    lu.assertEquals(candidate({1, 20, 4, 10}), false)
    lu.assertEquals(candidate({4, 1, 0, -10}), true)
    lu.assertEquals(candidate({4, 1, 1, 0}), true)
    lu.assertEquals(candidate({1, 2, 3, 2, 5, 60}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 60}), true)
    lu.assertEquals(candidate({9, 9, 9, 9}), true)
end

os.exit(lu.LuaUnit.run())