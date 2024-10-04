-- Write a function to check if the given table represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-table-represents-a-binary-heap/
local function check_min_heap(arr)
    local n = #arr
    for i in ipairs(arr) do
        local left_child = 2 * i
        local right_child = 2 * i + 1
        if left_child <= n and arr[i] > arr[left_child] then
            return false
        end
        if right_child <= n and arr[i] > arr[right_child] then
            return false
        end
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