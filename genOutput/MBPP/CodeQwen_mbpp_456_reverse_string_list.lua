-- Write a function to reverse each string in a given table of string values.
local function reverse_string_list(stringlist)
    local reversed_list = {}
    for _, str in ipairs(stringlist) do
        reversed_list[#reversed_list + 1] = str:reverse()
    end
    return reversed_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_string_list
    lu.assertEquals(candidate({'Red', 'Green', 'Blue', 'White', 'Black'}), {'deR', 'neerG', 'eulB', 'etihW', 'kcalB'})
    lu.assertEquals(candidate({'john', 'amal', 'joel', 'george'}), {'nhoj', 'lama', 'leoj', 'egroeg'})
    lu.assertEquals(candidate({'jack', 'john', 'mary'}), {'kcaj', 'nhoj', 'yram'})
end

os.exit(lu.LuaUnit.run())