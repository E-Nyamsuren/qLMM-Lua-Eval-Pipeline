-- Write a function to find number of tables present in the given table.
local function find_lists(Input)
    local list = {}
    local count = 0
    for i = 1, #Input do
        local word = Input[i]
        local word_length = #word
        local word_start = 1
        local word_end = word_length
        local word_middle = math.floor(word_length / 2)
        local word_middle_start = word_middle - 1
        local word_middle_end = word_middle + 1
        local word_middle_middle = math.floor(word_middle / 2)
        local word_middle_middle_start = word_middle_middle - 1
        local word_middle_middle_end = word_middle_middle + 1
        local word_middle_middle_middle = math.floor(word_middle_middle / 2)
        local word_middle_middle_middle_start = word_middle_middle_middle - 1
        local word_middle_middle_middle_end = word_middle_middle_middle + 1
        local word_middle_middle_middle_middle = math.floor(word_middle_middle_middle / 2)
        local word_middle_middle_middle_middle_start = word_middle_middle_middle_middle - 1
        local word_middle_middle_middle_middle_end = word_middle_middle_middle_middle + 1
        local word_middle_middle_middle_middle_middle = math.floor(word_middle_middle_middle_middle / 2)
        local word_middle_middle_middle_middle_middle_start = word_middle_middle_middle_middle_middle - 1
        local word_middle_middle_middle_middle_middle_end = word_middle_middle_middle_middle_middle + 1
        local word_middle_middle_middle_middle_middle_middle = math.floor(word_middle_middle_middle_middle_middle / 2)
        local word_middle_middle_middle_middle_middle_middle_start = word_middle_middle_middle_middle_middle_middle - 1
        local

lu = require('luaunit')

function test_humaneval()
local candidate = find_lists
    lu.assertEquals(candidate({{1, 2, 3, 4}, {5, 6, 7, 8}}), 2)
    lu.assertEquals(candidate({{1, 2}, {3, 4}, {5, 6}}), 3)
    lu.assertEquals(candidate({9, 8, 7, 6, 5, 4, 3, 2, 1}), 1)
end

os.exit(lu.LuaUnit.run())