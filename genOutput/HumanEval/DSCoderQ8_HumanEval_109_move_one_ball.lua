-- We have a table 'arr' of N integers arr[1], arr[2], ..., arr[N].The
-- numbers in the table will be randomly ordered. Your task is to determine if
-- it is possible to get a table sorted in non-decreasing order by performing 
-- the following operation on the given table:
--     You are allowed to perform right shift operation any number of times.
-- One right shift operation means shifting all elements of the table by one
-- position in the right direction. The last element of the table will be moved to
-- the starting position in the table i.e. 0th index. 
-- If it is possible to obtain the sorted table by performing the above operation
-- then return true else return false.
-- If the given table is empty then return true.
-- Note: The given table is guaranteed to have unique elements.
-- For Example:
-- >>> move_one_ball({3, 4, 5, 1, 2})
-- true
-- Explanation: By performin 2 right shift operations, non-decreasing order can
--              be achieved for the given table.
-- >>> move_one_ball({3, 5, 4, 1, 2})
-- false
-- Explanation:It is not possible to get non-decreasing order for the given
--             table by performing any number of right shift operations.
local function move_one_ball(arr)
    local n = #arr
    if n == 0 then return true end
    local count = 0
    for i = 1, n do
        if arr[i] > arr[i % n + 1] then
            count = count + 1
        end
    end
    return count <= 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_one_ball
    lu.assertEquals(candidate({3, 4, 5, 1, 2}), true)
    lu.assertEquals(candidate({3, 5, 10, 1, 2}), true)
    lu.assertEquals(candidate({4, 3, 1, 2}), false)
    lu.assertEquals(candidate({3, 5, 4, 1, 2}), false)
    lu.assertEquals(candidate({}), true)
end

os.exit(lu.LuaUnit.run())