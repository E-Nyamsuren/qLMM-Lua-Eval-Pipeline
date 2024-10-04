-- Write a function to check if the given table represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-table-represents-a-binary-heap/
local function check_min_heap(arr)
    local n = #arr
    local function is_min_heap(i)
        if i > n then
            return true
        end
        local left = 2 * i
        local right = 2 * i + 1
        if left <= n and arr[i] > arr[left] then
            return false
        end
        if right <= n and arr[i] > arr[right] then
            return false
        end
        return is_min_heap(left) and is_min_heap(right)
    end
    return is_min_heap(1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_min_heap
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 10, 15}), true)
    lu.assertEquals(candidate({2, 10, 4, 5, 3, 15}), false)
end

os.exit(lu.LuaUnit.run())