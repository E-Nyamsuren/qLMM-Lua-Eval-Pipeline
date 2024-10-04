-- Write a function that counts the number of pairs of integers in a table that xor to an even number.
local function find_even_pair(A)
    local count = 0
    for i = 1, #A do
        for j = i + 1, #A do
            if (A[i] % 2 == 0 and A[j] % 2 == 0) or (A[i] % 2 ~= 0 and A[j] % 2 ~= 0) then
                count = count + 1
            end
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_even_pair
    lu.assertEquals(candidate({5, 4, 7, 2, 1}), 4)
    lu.assertEquals(candidate({7, 2, 8, 1, 0, 5, 11}), 9)
    lu.assertEquals(candidate({1, 2, 3}), 1)
end

os.exit(lu.LuaUnit.run())