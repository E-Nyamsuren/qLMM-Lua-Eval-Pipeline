-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local n = #A
    local m = #B
    local i = 0
    local j = 0
    while i < n and j < m do
        if A[i] == B[j] then
            i = i + 1
            j = j + 1
        else
            i = i + 1
        end
    end
    return j == m
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())