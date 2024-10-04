-- You have been tasked to write a function that receives 
-- a hexadecimal number as a string and counts the number of hexadecimal 
-- digits that are primes (prime number, or a prime, is a natural number 
-- greater than 1 that is not a product of two smaller natural numbers).
-- Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
-- Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
-- So you have to determine a number of the following digits: 2, 3, 5, 7, 
-- B (=decimal 11), D (=decimal 13).
-- Note: you may assume the input is always correct or empty string, 
-- and symbols A,B,C,D,E,F are always uppercase.
-- Examples:
-- >>> hex_key('AB')
-- 1
-- >>> hex_key('1077E')
-- 2
-- >>> hex_key('ABED1A33')
-- 4
-- >>> hex_key('123456789ABCDEF0')
-- 6
-- >>> hex_key('2020')
-- 2
local function hex_key(num)
    local count = 0
    for i = 1, #num do
        if num:sub(i,i) == '2' or num:sub(i,i) == '3' or num:sub(i,i) == '5' or num:sub(i,i) == '7' or num:sub(i,i) == 'B' or num:sub(i,i) == 'D' then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = hex_key
    lu.assertEquals(candidate('AB'), 1)
    lu.assertEquals(candidate('1077E'), 2)
    lu.assertEquals(candidate('ABED1A33'), 4)
    lu.assertEquals(candidate('2020'), 2)
    lu.assertEquals(candidate('123456789ABCDEF0'), 6)
    lu.assertEquals(candidate('112233445566778899AABBCCDDEEFF00'), 12)
end

os.exit(lu.LuaUnit.run())