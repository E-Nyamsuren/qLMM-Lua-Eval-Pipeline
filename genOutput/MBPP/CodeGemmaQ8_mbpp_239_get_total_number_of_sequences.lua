-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local function get_number_of_sequences(m, n)
        if n == 1 then
            return 1
        end
        local total = 0
        for i = 1, m do
            if i >= 2 * m then
                break
            end
            total = total + get_number_of_sequences(m, n - 1)
        end
        return total
    end
    return get_number_of_sequences(m, n)
end
print(get_total_number_of_sequences(3, 3))
print(get_total_number_of_sequences(4, 4))
print(get_total_number_of_sequences(5, 5))
print(get_total_number_of_sequences(6, 6))
print(get_total_number_of_sequences(7, 7))
print(get_total_number_of_sequences(8, 8))
print(get_total_number_of_sequences(9, 9))
print(get_total_number_of_sequences(10, 10))
print(get_total_number_of_sequences(11, 11))
print(get_total_number_of_sequences(12, 12))
print(get_total_number_of_sequences(13, 13))
print(get_total_number_of_sequences(14, 14))
print(get_total_number_of_sequences(15, 15))
print(get_total_number_of_sequences(16, 16))
print(get_total_number_of_sequences(17, 17))
print(get_total_number_of_sequences(18, 18))
print(get_total_number_of_sequences(19, 19))
print(get_

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())