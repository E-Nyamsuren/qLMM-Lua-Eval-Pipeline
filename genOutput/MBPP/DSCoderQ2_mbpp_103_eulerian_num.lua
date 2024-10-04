-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
    local memo = {}
    local function euler(n, m)
        if m > n or n < 0 then return 0 end
        if m == 0 or m == n then return 1 end
        local key = tostring(n) .. "," .. tostring(m)
        local val = memo[key]
        if val == nil then
            val = euler(n - 1, m) + euler(n - 1, m - )
            memo[key] = val
        end
        return val
    end
    return euler(n, m)
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())