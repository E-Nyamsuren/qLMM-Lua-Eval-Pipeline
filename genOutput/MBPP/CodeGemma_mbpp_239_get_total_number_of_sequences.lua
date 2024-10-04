-- Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
local function get_total_number_of_sequences(m, n)
    local total_number_of_sequences = 0
    local current_sequence = {}
    local current_sequence_length = 0
    local current_sequence_sum = 0
    local current_sequence_product = 1
    local current_sequence_max = 0
    local current_sequence_min = 0
    local current_sequence_median = 0
    local current_sequence_mode = 0
    local current_sequence_range = 0
    local current_sequence_variance = 0
    local current_sequence_standard_deviation = 0
    local current_sequence_skewness = 0
    local current_sequence_kurtosis = 0
    local current_sequence_entropy = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence_coefficient_of_variation = 0
    local current_sequence_coefficient_of_range = 0
    local current_sequence

lu = require('luaunit')

function test_humaneval()
local candidate = get_total_number_of_sequences
    lu.assertEquals(candidate(10, 4), 4)
    lu.assertEquals(candidate(5, 2), 6)
    lu.assertEquals(candidate(16, 3), 84)
end

os.exit(lu.LuaUnit.run())