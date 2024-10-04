-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local digits = tostring(n):gmatch("%d")
    local prev = digits()
    local curr
    while prev do
        curr = digits()
        if curr and prev == curr then
            return false
        end
        prev = curr
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())