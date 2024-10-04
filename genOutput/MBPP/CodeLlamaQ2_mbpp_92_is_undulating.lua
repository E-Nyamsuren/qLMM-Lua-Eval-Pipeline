-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local s = tostring(n)
    local l = #s
    for i = 1, l - 1 do
        if s:sub(i, i) > s:sub(i + 1, i + 1) then
            return false
        end
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