-- Write a function which returns nth catalan number.
local function catalan_number(num)
    local function factorial(num)
        local fact = 1
        for i = 1, num do
            fact = fact * i
        end
        return fact
    end
    return factorial(2 * num) / (factorial(num + 1) * factorial(num))
end
print(catalan_number(5))


lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())