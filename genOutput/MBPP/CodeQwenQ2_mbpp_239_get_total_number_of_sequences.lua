-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local total_number_of_sequences = 0
    for i = 1, n do
        local min_element = 1
        local max_element = m
        for j = 1, i do
            if j == 1 then
                min_element = 1
                max_element = m
            else
                min_element = 2 * j - 1
                max_element = m
            end
            total_number_of_sequences = total_number_of_sequences + (max_element - min_element + 1)
        end
    end
    return total_number_of_sequences
end
return get_total_number_of_sequences
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())