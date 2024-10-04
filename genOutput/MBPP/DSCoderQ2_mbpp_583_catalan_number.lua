-- Write a function which returns nth catalan number.
local function catalan_number(num)
    if num < 0 then
        return "Invalid input"
    end
    if num == 0 or num == 1 then
        return 1
    end
    local res = math.factorial(2 * num) / (math.factorial(num + 1) * math(num))
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())