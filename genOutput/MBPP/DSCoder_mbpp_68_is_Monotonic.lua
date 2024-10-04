-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
    local flag = nil
    for i = 2, #A do
        if A[i-1] < A[i] then
            if flag == nil then
                flag = true
            elseif flag ~= true then
                return false
            end
        elseif A[i-1] > A[i] then
            if flag == nil then
                flag = false
            elseif flag ~= false then
                return false
            end
        end
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