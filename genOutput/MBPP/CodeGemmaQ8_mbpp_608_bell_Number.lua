-- Write a luathon function to find nth bell number.
local function bell_Number(n)
    if n == 0 then
        return 1
    end
    local sum = 0
    for i = 0, n do
        sum = sum + bell_Number(i) * bell_Number(n - i)
    end
    return sum
end
print(bell_Number(5))


lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())