-- Write a function to remove odd characters in a string.
local function remove_odd(str1)
    local result = ""
    for i = 1, #str1 do
        if (i % 2) == 0 then
            result = result .. str1:sub(i, i)
        end
    end
    return result
end
print(remove_odd("abcdef"))  -- "bdf"
print(remove_odd("123456"))  -- "246"
print(remove_odd("a1b2c3"))  -- "b2"
print(remove_odd("abcdefg"))  -- "bdf"
print(remove_odd("1234567"))  -- "246"
print(remove_odd("a1b2c3d"))  -- "b2d"
print(remove_odd("abcdefgh"))  -- "bdfh"
print(remove_odd("12345678"))  -- "2468"
print(remove_odd("a1b2c3d4"))  -- "b2d4"
print(remove_odd("abcdefghi"))  -- "bdfh"
print(remove_odd("123456789"))  -- "2468"
print(remove_odd("a1b2c3d4e"))  -- "b2d4e"
print(remove_odd("abcdefghij"))  -- "bdfhij"
print(remove_odd("1234567890"))  -- "246890"
print(remove_odd("a1b2c3d4e5"))  -- "b2d4e5"
print(remove_odd("abcdefghijk"))  -- "bdfhijk"
print(remove_odd("12345678901"))  -- "2468901"
print(remove_odd("a1b2c3d4e56"))  -- "b2d4e56"
print(remove_odd("abcdefghijkl"))  -- "bdfhijkl"
print(remove_odd("123456789012"))  -- "24689012"
print(remove_odd("a1b2c3d4e567"))  -- "b2d4e567"
print(

lu = require('luaunit')

function test_humaneval()
local candidate = remove_odd
    lu.assertEquals(candidate('python'), 'yhn')
    lu.assertEquals(candidate('program'), 'rga')
    lu.assertEquals(candidate('language'), 'agae')
end

os.exit(lu.LuaUnit.run())