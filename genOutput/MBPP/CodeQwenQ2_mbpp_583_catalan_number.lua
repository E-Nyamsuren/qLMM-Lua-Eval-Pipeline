-- Write a function which returns nth catalan number.
local function catalan_number(num)
    if num == 0 then
        return 1
    end
    local result = 0
    for i = 0, num do
        result = result + catalan_number(i) * catalan_number(num - i)
    end
    return result
end
return catalan_number
end

lu = require('luaunit')

function test_humaneval()
local candidate = catalan_number
    lu.assertEquals(candidate(10), 16796)
    lu.assertEquals(candidate(9), 4862)
    lu.assertEquals(candidate(7), 429)
end

os.exit(lu.LuaUnit.run())