-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
    local n = #A
    if n == 1 then
        return true
    end
    local flag = true
    for i = 1, n - 1 do
        if A[i] > A[i + 1] then
            flag = false
            break
        end
    end
    return flag
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Monotonic
    lu.assertEquals(candidate({6, 5, 4, 4}), true)
    lu.assertEquals(candidate({1, 2, 2, 3}), true)
    lu.assertEquals(candidate({1, 3, 2}), false)
end

os.exit(lu.LuaUnit.run())