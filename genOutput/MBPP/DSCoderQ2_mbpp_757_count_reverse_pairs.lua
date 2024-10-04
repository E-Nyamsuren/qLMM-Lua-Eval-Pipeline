-- Write a function to count the pairs of reverse strings in the given string table. https://www.geeksforgeeks.org/luathon-program-to-count-the-pairs-of-reverse-strings/
local function count_reverse_pairs(test_list)
    local count = 0
    local hash_table = {}

lu = require('luaunit')

function test_humaneval()
local candidate = count_reverse_pairs
    lu.assertEquals(candidate({'julia', 'best', 'tseb', 'for', 'ailuj'}), 2)
    lu.assertEquals(candidate({'geeks', 'best', 'for', 'skeeg'}), 1)
    lu.assertEquals(candidate({'makes', 'best', 'sekam', 'for', 'rof'}), 2)
end

os.exit(lu.LuaUnit.run())