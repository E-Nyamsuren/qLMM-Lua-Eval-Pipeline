-- Write a function to check if the given table represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-table-represents-a-binary-heap/
local function check_min_heap(arr)
    n = #arr
    for i in range(0, math.floor(n/2)) do
        if arr[i] > arr[2*i+1] then
            return false
        end
        if 2*i+2 < n and arr[i] > arr[2*i+2] then
            return false
        end
   
        local function swap(arr, i, j)
            arr[i], arr[j] = arr[j], arr[i]
        end
        swap(arr, 0, 1)
        local function heapify(arr, n, i)
            largest = i
            l = 2 * i + 1
            r = 2 * i + 2
            if l < n and arr[largest] > arr[l] then
                largest = l
            end
            if r < n and arr[largest] > arr[r] then
                largest = r
            end
            if largest ~= i then
                swap(arr, i, largest)
                heapify(arr, n, largest)
            end
        end
        for i in {[2*n]=[n], [2*n+1]=[n+1]} do
            heapify(arr, n, i)
        end
        return true
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_min_heap
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 10, 15}), true)
    lu.assertEquals(candidate({2, 10, 4, 5, 3, 15}), false)
end

os.exit(lu.LuaUnit.run())