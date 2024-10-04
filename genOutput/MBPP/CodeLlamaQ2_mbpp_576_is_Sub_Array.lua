-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    if #A == #B then
        for i = 1, #A do
            if A[i] ~= B[i] then
                return false
            end
        end
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())