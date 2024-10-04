-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
    local n = #A
    if n <= 2 then return true end
    local flag = A[2] - A[1]
    for i = 3, n do
        if (A[i] - A[i-1]) * flag < 0 then
            return false
        end
        flag = A[i] - A[i-1]
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Monotonic
    lu.assertEquals(candidate({6, 5, 4, 4}), true)
    lu.assertEquals(candidate({1, 2, 2, 3}), true)
    lu.assertEquals(candidate({1, 3, 2}), false)
end

os.exit(lu.LuaUnit.run())