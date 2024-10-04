-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
	local result = {}
	for i = startnum, endnum do
		local digits = {}
		local num = i
		while num > 0 do
			digits[#digits + 1] = num % 10
			num = math.floor(num / 10)
		end
		local is_divisible = true
		for _, digit in ipairs(digits) do
			if i % digit ~= 0 then
				is_divisible = false
				break
			end
		end
		if is_divisible then
			result[#result + 1] = i
		end
	end
	return result
end
print(table.concat(divisible_by_digits(10, 100), ", "))


lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())