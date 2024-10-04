-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local mA, mB = #A, #B
    if mA < mB then return false end
    for i = 1, mA do
        if A[i] == B[1] then
            for j = 2, mB do
                if A[i+j-1] ~= B[j] then
                    break
                end
                if j == mB then
                    return true
                end
            end
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())