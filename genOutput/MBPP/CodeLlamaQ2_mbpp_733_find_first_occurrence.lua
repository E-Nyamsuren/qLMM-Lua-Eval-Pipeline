-- Write a function to find the index of the first occurrence of a given number in a sorted table.
local function find_first_occurrence(A, x)
    local left = 1
    local right = #A
    while left <= right do
        local mid = (left + right) // 2
        if A[mid] == x then
            return mid
        elseif A[mid] > x then
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return -1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_first_occurrence
    lu.assertEquals(candidate({2, 5, 5, 5, 6, 6, 8, 9, 9, 9}, 5), 1)
    lu.assertEquals(candidate({2, 3, 5, 5, 6, 6, 8, 9, 9, 9}, 5), 2)
    lu.assertEquals(candidate({2, 4, 1, 5, 6, 6, 8, 9, 9, 9}, 6), 4)
end

os.exit(lu.LuaUnit.run())