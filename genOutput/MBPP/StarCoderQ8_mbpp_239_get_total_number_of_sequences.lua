-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
	local function get_sequences(m, n, current_sequence, current_value)
		if n == 0 then
			return 1
		end
		local count = 0
		for i = current_value, m do
			if i >= current_value * 2 then
				local new_sequence = current_sequence .. " " .. i
				count = count + get_sequences(m, n - 1, new_sequence, i)
			end
		end
		return count
	end
	return get_sequences(m, n, "", 1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())