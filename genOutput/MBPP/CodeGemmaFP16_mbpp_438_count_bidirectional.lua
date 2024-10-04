-- Write a function to count bidirectional table pairs.
local function count_bidirectional(test_list)
    local bidirectional_pairs = 0
    local bidirectional_pairs_reversed = 0
    local bidirectional_pairs_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed_reversed = 0
    local bidirectional_pairs_reversed_reversed_reversed_reversed_reversed_reversed_reversed_

lu = require('luaunit')

function test_humaneval()
local candidate = count_bidirectional
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 3)
    lu.assertEquals(candidate({{5, 6}, {1, 3}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 2)
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 2}, {6, 5}, {2, 1}}), 4)
end

os.exit(lu.LuaUnit.run())