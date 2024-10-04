-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
	local function is_divisible_by_digit(n)
		local function is_digit(n)
			local function is_digit_in_number(n, digit)
				local function is_digit_in_number_helper(n, digit, count)
					if n == 0 then
						return count == digit
					end
					return is_digit_in_number_helper(n // 10, digit, count + 1)
				end
				return is_digit_in_number_helper(n, digit, 0)
			end
			local function is_digit_in_number_helper(n, digit, count)
				if n == 0 then
					return count == digit
				end
				return is_digit_in_number_helper(n // 10, digit, count + 1)
			end
			return is_digit_in_number(n, digit)
		end
		local function is_digit_in_number(n, digit)
			local function is_digit_in_number_helper(n, digit, count)
				if n == 0 then
					return count == digit
				end
				return is_digit_in_number_helper(n // 10, digit, count + 1)
			end
			return is_digit_in_number_helper(n, digit, 0)
		end
		local function is_digit_in_number(n, digit)
			local function is_digit_in_number_helper(n, digit, count)
				if n == 0 then
					return count == digit
				end
				return is_digit_in_number_helper(n // 10, digit, count + 1)
			end
			return is_digit_in_number_helper(n, digit, 0)
		end
		local function is_digit_in_number(n, digit

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())