-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local A_Size = #A
    local B_Size = #B
    if A_Size > B_Size then
        return false
    end
    for i = 1, A_Size do
        if A[i] ~= B[i] then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())