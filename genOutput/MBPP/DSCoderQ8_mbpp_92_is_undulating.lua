-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local digits = tostring(n):gmatch("%d")
    local undulating = true
    local prev = digits()
    if prev == nil then return false end
    local curr
    while prev ~= nil do
        curr = digits()
        if curr == nil then break end
        if curr == prev then
            undulating = false
            break
        end
        prev = curr
    end
    return undulating
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())