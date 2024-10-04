-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    local digits = {}
    for i = 1, #x do
        digits[tonumber(x:sub(i, i))] = true
    end
    for i = 0, 9 do
        if not digits[i] then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())