-- Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
local function is_perfect_square(n)
    local i = 1
    while i * i <= n do
        if i * i == n then
            return true
        end
        i = i + 1
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_perfect_square
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(36), true)
    lu.assertEquals(candidate(14), false)
    lu.assertEquals(candidate(196), true)
    lu.assertEquals(candidate(125), false)
    lu.assertEquals(candidate(15625), true)
end

os.exit(lu.LuaUnit.run())