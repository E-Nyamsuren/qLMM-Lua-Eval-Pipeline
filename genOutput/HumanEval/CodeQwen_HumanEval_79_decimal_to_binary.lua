-- You will be given a number in decimal form and your task is to convert it to
-- binary format. The function should return a string, with each character representing a binary
-- number. Each character in the string will be '0' or '1'.
-- There will be an extra couple of characters 'db' at the beginning and at the end of the string.
-- The extra characters are there to help with the format.
-- Examples:
-- >>> decimal_to_binary(15)
-- 'db1111db'
-- >>> decimal_to_binary(32)
-- 'db100000db'
local function decimal_to_binary(decimal)
    local binary = ''
    while decimal > 0 do
        local remainder = decimal % 2
        binary = tostring(remainder) .. binary
        decimal = math.floor(decimal / 2)
    end
    return 'db' .. binary .. 'db'
end
print(decimal_to_binary(15)) -- 'db1111db'
print(decimal_to_binary(32)) -- 'db100000db'
print(decimal_to_binary(64)) -- 'db1000000db'
print(decimal_to_binary(128)) -- 'db10000000db'
print(decimal_to_binary(256)) -- 'db100000000db'
print(decimal_to_binary(512)) -- 'db1000000000db'
print(decimal_to_binary(1024)) -- 'db10000000000db'
print(decimal_to_binary(2048)) -- 'db100000000000db'
print(decimal_to_binary(4096)) -- 'db1000000000000db'
print(decimal_to_binary(8192)) -- 'db10000000000000db'
print(decimal_to_binary(16384)) -- 'db100000000000000db'
print(decimal_to_binary(32768)) -- 'db1000000000000000db'
print(decimal_to_binary(65536)) -- 'db10000000000000000db'
print(decimal_to_binary(131072)) -- 'db100000000

lu = require('luaunit')

function test_humaneval()
local candidate = decimal_to_binary
    lu.assertEquals(candidate(0), 'db0db')
    lu.assertEquals(candidate(32), 'db100000db')
    lu.assertEquals(candidate(103), 'db1100111db')
    lu.assertEquals(candidate(15), 'db1111db')
end

os.exit(lu.LuaUnit.run())