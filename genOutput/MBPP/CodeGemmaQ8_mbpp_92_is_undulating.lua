-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local s = tostring(n)
    local up = false
    local down = false
    for i = 1, #s - 1 do
        if s:sub(i, i) < s:sub(i + 1, i + 1) then
            if up then
                return false
            end
            down = true
        elseif s:sub(i, i) > s:sub(i + 1, i + 1) then
            if down then
                return false
            end
            up = true
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