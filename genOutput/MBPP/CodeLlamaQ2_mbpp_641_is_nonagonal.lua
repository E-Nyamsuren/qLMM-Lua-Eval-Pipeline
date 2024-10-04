-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local s = tostring(n)
    for i = 1, #s do
        if s:sub(i, i) == "9" then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())