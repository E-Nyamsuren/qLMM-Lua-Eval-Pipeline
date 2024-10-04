-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local i = 1
    while i < n do
        if i % 2 == 0 then
            if n[i] > n[i + 1] then
                return false
            end
        else
            if n[i] < n[i + 1] then
                return false
            end
        end
        i = i + 1
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