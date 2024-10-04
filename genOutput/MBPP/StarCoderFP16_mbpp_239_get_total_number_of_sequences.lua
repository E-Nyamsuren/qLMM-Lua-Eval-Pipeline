-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
	local total_number_of_sequences = 0
	local function get_total_number_of_sequences_helper(m, n, current_number, current_sequence)
		if n == 0 then
			total_number_of_sequences = total_number_of_sequences + 1
			return
		end
		if current_number > m then
			return
		end
		for i = current_number, m do
			get_total_number_of_sequences_helper(m, n - 1, i, current_sequence .. i)
		end
	end
	get_total_number_of_sequences_helper(m, n, 1, "")
	return total_number_of_sequences
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())