-- Write a luathon function to find nth bell number.
local function bell_Number(n)
    local bell_numbers = {}
    bell_numbers[0] = 1
    bell_numbers[1] = 1
    for i = 2, n do
        bell_numbers[i] = 0
        for j = 0, i - 1 do
            bell_numbers[i] = bell_numbers[i] + bell_numbers[j] * bell_numbers[i - j - 1]
        end
    end
    return bell_numbers[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())