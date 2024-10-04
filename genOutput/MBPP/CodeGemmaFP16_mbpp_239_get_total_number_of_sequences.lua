-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local total_number_of_sequences = 0
    local function helper(current_number, current_sequence)
        if current_number > m then
            return
        end
        if #current_sequence == n then
            total_number_of_sequences = total_number_of_sequences + 1
            return
        end
        helper(current_number + 1, current_sequence .. current_number)
        helper(current_number + 2, current_sequence .. current_number)
    end
    helper(1, "")
    return total_number_of_sequences
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())