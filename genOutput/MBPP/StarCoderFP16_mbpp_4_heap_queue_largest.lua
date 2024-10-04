-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
	local heap = {}
	for i = 1, n do
		heap[i] = nums[i]
	end
	for i = n / 2, 1, -1 do
		heap_sift_down(heap, i, n)
	end
	for i = n + 1, #nums do
		if nums[i] > heap[1] then
			heap[1] = nums[i]
			heap_sift_down(heap, 1, n)
		end
	end
	return heap
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_queue_largest
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 3), {85, 75, 65})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 2), {85, 75})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 5), {85, 75, 65, 58, 35})
end

os.exit(lu.LuaUnit.run())