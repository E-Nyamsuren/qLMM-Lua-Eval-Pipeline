-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
    local max_length = 0
    local current_length = 0
    local current_string = ""
    local current_string_length = 0
    local current_string_length_max = 0
    local current_string_length_min = 0
    local current_string_length_max_index = 0
    local current_string_length_min_index = 0
    local current_string_length_max_index_max = 0
    local current_string_length_min_index_max = 0
    local current_string_length_max_index_min = 0
    local current_string_length_min_index_min = 0
    local current_string_length_max_index_min_max = 0
    local current_string_length_min_index_min_max = 0
    local current_string_length_max_index_min_max_index = 0
    local current_string_length_min_index_min_max_index = 0
    local current_string_length_max_index_min_max_index_max = 0
    local current_string_length_min_index_min_max_index_max = 0
    local current_string_length_max_index_min_max_index_max_index = 0
    local current_string_length_min_index_min_max_index_max_index = 0
    local current_string_length_max_index_min_max_index_max_index_max = 0
    local current_string_length_min_index_min_max_index_max_index_max = 0
    local current_string_length_max_index_min_max_index_max_index_max_index = 0
    local current_string_length_min_index_min_max_index_max_index_max_index = 0
    local current_string_length_max_index_min_max_index_max

lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())