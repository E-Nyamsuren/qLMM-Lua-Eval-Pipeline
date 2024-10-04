-- Write a function to sort the given table.
local function heap_sort(iterable)
    local heap = {}
    for _, v in ipairs(iterable) do
        heap[#heap + 1] = v
    end
    local function sift_down(i)
        local l, r = 2 * i, 2 * i + 1
        local largest = i
        if l <= #heap and heap[l] > heap[largest] then
            largest = l
        end
        if r <= #heap and heap[r] > heap[largest] then
            largest = r
        end
        if largest ~= i then
            heap[i], heap[largest] = heap[largest], heap[i]
            sift_down(largest)
        end
    end
    for i = #heap / 2, 1, -1 do
        sift_down(i)
    end
    for i = #heap, 2, -1 do
        heap[1], heap[i] = heap[i], heap[1]
        sift_down(1)
    end
    return heap
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_sort
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 2, 4, 6, 8, 0}), {0, 1, 2, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 25, 58}), {14, 22, 25, 25, 35, 58, 65, 75, 85})
    lu.assertEquals(candidate({7, 1, 9, 5}), {1, 5, 7, 9})
end

os.exit(lu.LuaUnit.run())