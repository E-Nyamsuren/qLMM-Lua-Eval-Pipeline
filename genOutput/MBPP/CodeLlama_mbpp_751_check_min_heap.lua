-- Write a function to check if the given table represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-table-represents-a-binary-heap/
local function check_min_heap(arr)
    local n = #arr
    local i = 1
    while i < n do
        local left = 2 * i
        local right = 2 * i + 1
        local min_index = i
        if left <= n and arr[left] < arr[i] then
            min_index = left
        end
        if right <= n and arr[right] < arr[min_index] then
            min_index = right
        end
        if min_index ~= i then
            return false
        end
        i = i + 1
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_min_heap
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 10, 15}), true)
    lu.assertEquals(candidate({2, 10, 4, 5, 3, 15}), false)
end

os.exit(lu.LuaUnit.run())