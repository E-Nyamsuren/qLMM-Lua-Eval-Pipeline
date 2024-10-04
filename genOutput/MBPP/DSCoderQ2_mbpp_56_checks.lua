-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    local rev = n % 10
    n = math.floor(n / 10)
    while n ~= 0 do
        rev = rev * 10 + n % 10
        n = math
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())