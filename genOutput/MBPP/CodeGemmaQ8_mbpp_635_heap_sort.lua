-- Write a function to sort the given table.
local function heap_sort(iterable)
    local function heapify(iterable, i, size)
        local l = 2 * i
        local r = 2 * i + 1
        local largest = i
        if l <= size and iterable[l] > iterable[largest] then
            largest = l
        end
        if r <= size and iterable[r] > iterable[largest] then
            largest = r
        end
        if largest ~= i then
            iterable[i], iterable[largest] = iterable[largest], iterable[i]
            heapify(iterable, largest, size)
        end
    end
    local size = #iterable
    for i = size / 2, 1, -1 do
        heapify(iterable, i, size)
    end
    for i = size, 2, -1 do
        iterable[i], iterable[1] = iterable[1], iterable[i]
        heapify(iterable, 1, i - 1)
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_sort
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 2, 4, 6, 8, 0}), {0, 1, 2, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 25, 58}), {14, 22, 25, 25, 35, 58, 65, 75, 85})
    lu.assertEquals(candidate({7, 1, 9, 5}), {1, 5, 7, 9})
end

os.exit(lu.LuaUnit.run())