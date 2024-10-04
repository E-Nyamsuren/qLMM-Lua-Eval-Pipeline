-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local queue = {}
    local size = 0
    local function swap(i, j)
        local tmp = queue[i]
        queue[i] = queue[j]
        queue[j] = tmp
    end
    local function heap_up(i)
        local j = math.floor(i / 2)
        if queue[j] and queue[i] > queue[j] then
            swap(i, j)
            heap_up(j)
        end
    end
    local function heap_down(i)
        local j = i * 2
        if j <= size and queue[j] > queue[i] then
            swap(i, j)
            heap_down(j)
        end
        j = j + 1
        if j <= size and queue[j] > queue[i] then
            swap(i, j)
            heap_down(j)
        end
    end
    local function heap_insert(num)
        size = size + 1
        queue[size] = num
        heap_up(size)
    end
    local function heap_pop()
        local num = queue[1]
        queue[1] = queue[size]
        size = size - 1
        heap_down(1)
        return num
    end
    for _, num in ipairs(nums) do
        if size < n then
            heap_insert(num)
        elseif num > queue[1] then
            heap_pop()
            heap_insert(num)
        end
    end
    local result = {}
    for i = 1, n do
        result[i] = heap_pop()
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_queue_largest
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 3), {85, 75, 65})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 2), {85, 75})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 5), {85, 75, 65, 58, 35})
end

os.exit(lu.LuaUnit.run())