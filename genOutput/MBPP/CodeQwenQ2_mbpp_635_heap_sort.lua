-- Write a function to sort the given table.
local function heap_sort(iterable)
    local n = #iterable
    for i = n / 2, 1, -1 do
        heap_adjust(iterable, i, n)
    end
    for i = n, 2, -1 do
        iterable[1], iterable[i] = iterable[i], iterable[1]
        heap_adjust(iterable, 1, i - 1)
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