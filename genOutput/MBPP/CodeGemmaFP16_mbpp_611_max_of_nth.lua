-- Write a function which given a matrix represented as a table of tables returns the max of the n'th column.
local function max_of_nth(test_list, N)
    local max_list = {}
    for i = 1, #test_list do
        max_list[i] = test_list[i][N]
    end
    return math.max(unpack(max_list))
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = max_of_nth
    lu.assertEquals(candidate({{5, 6, 7}, {1, 3, 5}, {8, 9, 19}}, 2), 19)
    lu.assertEquals(candidate({{6, 7, 8}, {2, 4, 6}, {9, 10, 20}}, 1), 10)
    lu.assertEquals(candidate({{7, 8, 9}, {3, 5, 7}, {10, 11, 21}}, 1), 11)
end

os.exit(lu.LuaUnit.run())