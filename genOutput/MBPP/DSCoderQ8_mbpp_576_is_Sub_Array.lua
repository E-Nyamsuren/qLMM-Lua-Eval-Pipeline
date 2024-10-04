-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local mA = #A
    local mB = #B
    local i = 1
    local j = 1
    local k = 1
    while (i <= mA and j <= mB) do
        if (A[i] == B[j]) then
            i = i + 1
            j = j + 1
        else
            j = j + 1
            k = k + 1
        end
        if (k > mB) then
            return true
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