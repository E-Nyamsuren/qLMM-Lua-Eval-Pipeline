-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local count = 0
    for i, v in ipairs(B) do
        if A[i] == v then
            count = count + 1
        end
    end
    return count == #A
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())