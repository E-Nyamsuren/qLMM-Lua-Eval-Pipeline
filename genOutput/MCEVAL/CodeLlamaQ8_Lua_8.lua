
--[[
Calculate the Hamming distance between two integers in binary representation.
Parameters:
- x (int): The first positive integer (x <= 1,000,000,000).
- y (int): The second positive integer (y <= 1,000,000,000).
Returns:
int: The Hamming distance between x and y, i.e., the number of bits that need to be flipped
     to transform x into y in binary.
    >>> hamming_distance(1,2)
    2
]]--
function hamming_distance(x, y)
    local x_bin = tostring(x):gsub("1", "1 "):gsub("0", "0 "):gsub("%s+", "")
    local y_bin = tostring(y):gsub("1", "1 "):gsub("0", "0 "):gsub("%s+", "")
    local count = 0
    for i = 1, #x_bin do
        if x_bin:sub(i, i) ~= y_bin:sub(i, i) then
            count = count + 1
        end
    end
    return count
end


lu = require('luaunit')

function test_hamming_distance()
    local candidate = hamming_distance
    lu.assertTrue(candidate(1, 2) == 2) -- 01 and 10 have 2 different bits
    lu.assertTrue(candidate(4, 7) == 2) -- 100 and 111 have 2 different bits
    lu.assertTrue(candidate(25, 30) == 3) -- Additional test: 11001 and 11110 have 3 different bits
    lu.assertTrue(candidate(0, 0) == 0) -- Additional test: Same numbers have 0 different bits
    lu.assertTrue(candidate(0xFFFFFFF, 0x0000000) == 28) -- Additional test: Max unsigned int and 0 have 32 different bits
end

os.exit(lu.LuaUnit.run())