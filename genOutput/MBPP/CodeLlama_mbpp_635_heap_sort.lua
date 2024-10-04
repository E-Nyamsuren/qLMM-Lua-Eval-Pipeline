-- Write a function to sort the given table.
local function heap_sort(iterable)
    local n = #iterable
    local function sift_down(i, n)
        local value = iterable[i]
        local child = 2 * i
        while child <= n do
            if child < n and iterable[child] < iterable[child + 1] then
                child = child + 1
            end
            if value < iterable[child] then
                iterable[i] = iterable[child]
                i = child
                child = 2 * i
            else
                break
            end
        end
        iterable[i] = value
    end
    for i = n, 1, -1 do
        sift_down(i, n)
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