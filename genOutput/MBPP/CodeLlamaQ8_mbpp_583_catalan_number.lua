-- Write a function which returns nth catalan number.
local function catalan_number(num)
    local result = 0
    if num == 0 then
        result = 1
    else
        for i = 1, num - 1 do
            result = result + catalan_number(i) * catalan_number(num - i - 1)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())