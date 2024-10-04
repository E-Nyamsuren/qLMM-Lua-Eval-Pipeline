-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
	local function prod(a, b)
		return a * b
	end
	local function largest_product(nums, N)
		local function prod(a, b)
			return a * b
		end
		local function largest_product_helper(nums, N, a, b, prod)
			if N == 0 then
				return prod(a, b)
			end
			local max = prod(a, b)
			local a_max = a
			local b_max = b
			for i = 1, #nums do
				for j = 1, #nums do
					if prod(nums[i], nums[j]) > max then
						max = prod(nums[i], nums[j])
						a_max = nums[i]
						b_max = nums[j]
					end
				end
			end
			return a_max, b_max, max, N - 1
		end
		local function largest_product_helper2(nums, N, a, b, prod)
			if N == 0 then
				return prod(a, b)
			end
			local max = prod(a, b)
			local a_max = a
			local b_max = b
			for i = 1, #nums do
				for j = 1, #nums do
					if prod(nums[i], nums[j]) > max then
						max = prod(nums[i], nums[j])
						a_max = nums[i]
						b_max = nums[j]
					end
				end
			end
			return a_max, b_max, max, N - 1
		end
		local function largest_product_helper3(nums, N, a, b, prod)
			if N == 0 then
				return prod(a, b)
			end
			local max = prod(a, b)
			local a_max = a
			local b_max = b
			for i = 1, #nums do
				for j = 1

lu = require('luaunit')

function test_humaneval()
local candidate = large_product
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 3), {60, 54, 50})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 4), {60, 54, 50, 48})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 5), {60, 54, 50, 48, 45})
end

os.exit(lu.LuaUnit.run())