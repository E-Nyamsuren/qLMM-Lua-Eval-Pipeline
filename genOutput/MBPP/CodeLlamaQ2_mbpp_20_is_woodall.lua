-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    if x < 1000000000000000 then
        return false
    end
    local s = tostring(x)
    for i = 1, 10 do
        if s:sub(i, i) ~= s:sub(10 - i + 1, 10 - i + 1) then
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