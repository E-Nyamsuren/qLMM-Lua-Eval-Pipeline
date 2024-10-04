-- Write a function to convert table string to integer table.
local function tuple_str_int(test_str)
    local test_str = test_str
    local test_str_split = test_str:split(",")
    local test_str_int = {}
    for i, v in ipairs(test_str_split) do
        test_str_int[i] = tonumber(v)
    end
    return test_str_int
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_str_int
    lu.assertEquals(candidate('(7, 8, 9)'), {7, 8, 9})
    lu.assertEquals(candidate('(1, 2, 3)'), {1, 2, 3})
    lu.assertEquals(candidate('(4, 5, 6)'), {4, 5, 6})
    lu.assertEquals(candidate('(7, 81, 19)'), {7, 81, 19})
end

os.exit(lu.LuaUnit.run())