-- Write a function to check if the given table represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-table-represents-a-binary-heap/
local function check_min_heap(arr)
    local n = #arr
    local function check_heap(i)
        local l = 2*i
        local r = 2*i + 1
        if l <= n and arr[l] < arr[i] then
            return false
        end
        if r <= n and arr[r] < arr[i] then
            return false
        end
        if l <= n then
            return check_heap(l)
        end
        if r <= n then
            return check_heap(r)
        end
        return true
    end
    return check_heap(1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_min_heap
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 10, 15}), true)
    lu.assertEquals(candidate({2, 10, 4, 5, 3, 15}), false)
end

os.exit(lu.LuaUnit.run())