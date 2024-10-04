-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    if n < 0 then return false end
    local i = 0
    local j = math.floor(math.sqrt(n))
    while i <= j do
        local temp = i*i + j*j
        if temp == n then return true end
        if temp < n then i = i + 1 else j = j - 1 end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())