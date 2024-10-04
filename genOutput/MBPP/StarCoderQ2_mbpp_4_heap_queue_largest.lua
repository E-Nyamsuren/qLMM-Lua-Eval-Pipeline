-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
	local heap = {}
	for _, num in ipairs(nums) do
		table.insert(heap, num)
	end
	for i = #heap, 1, -1 do
		heap[i] = nil
	end
	for i = #nums, 1, -1 do
		local max = 1
		for j = 2, #heap do
			if heap[j] > heap[max] then
				max = j
			end
		end
		heap[max] = nums[i]
		heap[max] = nil
	end
	local result = {}
	for i = 1, n do
		table.insert(result, heap[i])
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