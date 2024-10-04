-- Write a luathon function to check if the elements of a given table are unique or not.
local function all_unique(test_list)
    local hash_table = {}
    for _, value in ipairs(test_list) do
        if hash_table[value] then
            return false
        else
            hash_table[value] = true
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = all_unique
    lu.assertEquals(candidate({1, 2, 3}), true)
    lu.assertEquals(candidate({1, 2, 1, 2}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())