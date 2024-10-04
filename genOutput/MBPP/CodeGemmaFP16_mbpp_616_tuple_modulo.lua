-- Write a function which takes two tables of the same length and performs the element wise modulo.
local function tuple_modulo(test_tup1, test_tup2)
    local tup1 = test_tup1
    local tup2 = test_tup2
    local tup_mod = {}
    for i = 1, #tup1 do
        tup_mod[i] = tup1[i] % tup2[i]
    end
    return tup_mod
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_modulo
    lu.assertEquals(candidate({10, 4, 5, 6}, {5, 6, 7, 5}), {0, 4, 5, 1})
    lu.assertEquals(candidate({11, 5, 6, 7}, {6, 7, 8, 6}), {5, 5, 6, 1})
    lu.assertEquals(candidate({12, 6, 7, 8}, {7, 8, 9, 7}), {5, 6, 7, 1})
end

os.exit(lu.LuaUnit.run())