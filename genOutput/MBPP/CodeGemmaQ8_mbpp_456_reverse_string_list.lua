-- Write a function to reverse each string in a given table of string values.
local function reverse_string_list(stringlist)
    local reversed_list = {}
    for i = 1, #stringlist do
        local reversed_string = ""
        for j = string.len(stringlist[i]), 1, -1 do
            reversed_string = reversed_string .. string.sub(stringlist[i], j, j)
        end
        reversed_list[i] = reversed_string
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