-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    if #A == 0 or #B == 0 then
        return false
    end
    for i = 1, #A do
        local found = false
        for j = 1, #B do
            if A[i] == B[j] then
                found = true
                break
            end
        end
        if not found then
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