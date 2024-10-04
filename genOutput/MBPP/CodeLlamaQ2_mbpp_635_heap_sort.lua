-- Write a function to sort the given table.
local function heap_sort(iterable)
    local function sift_down(i)
        local left = 2 * i + 1
        local right = 2 * i + 2
        local largest = i
        if left <= #iterable and iterable[left] > iterable[largest] then
            largest = left
        end
        if right <= #iterable and iterable[right] > iterable[largest] then
            largest = right
        end
        if largest ~= i then
            iterable[i], iterable[largest] = iterable[largest], iterable[i]
            sift_down(largest)
        end
    end
    for i = #iterable // 2, 0, -1 do
        sift_down(i)
    end
    for i = #iterable, 2, -1 do
        iterable[i], iterable[0] = iterable[0], iterable[i]
        sift_down(0)
    end
    return iterable
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_sort
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 2, 4, 6, 8, 0}), {0, 1, 2, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 25, 58}), {14, 22, 25, 25, 35, 58, 65, 75, 85})
    lu.assertEquals(candidate({7, 1, 9, 5}), {1, 5, 7, 9})
end

os.exit(lu.LuaUnit.run())