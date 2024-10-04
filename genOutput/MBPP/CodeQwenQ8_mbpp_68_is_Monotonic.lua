-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
    local increasing = true
    local decreasing = true
    
    for i = 2, #A do
        if A[i] > A[i-1] then
            decreasing = false
        elseif A[i] < A[i-1] then
            increasing = false
        end
    end
    
    return increasing or decreasing
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Monotonic
    lu.assertEquals(candidate({6, 5, 4, 4}), true)
    lu.assertEquals(candidate({1, 2, 2, 3}), true)
    lu.assertEquals(candidate({1, 3, 2}), false)
end

os.exit(lu.LuaUnit.run())