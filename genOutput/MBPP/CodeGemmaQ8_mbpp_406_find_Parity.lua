-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
    if x%2==0 then
        print("Even")
    else
        print("Odd")
    end
end
find_Parity(10)
find_Parity(11)


lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())