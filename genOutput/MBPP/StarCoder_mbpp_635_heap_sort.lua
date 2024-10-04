-- Write a function to sort the given table.
local function heap_sort(iterable)
	local heap = iterable
	local n = #heap
	local parent = math.floor(n / 2)
	while parent >= 1 do
		heapify(heap, parent, n)
		parent = parent - 1
	end
	local end_index = n
	while end_index > 1 do
		heap[1], heap[end_index] = heap[end_index], heap[1]
		end_index = end_index - 1
		heapify(heap, 1, end_index)
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