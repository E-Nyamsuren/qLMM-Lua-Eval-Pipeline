-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local t = {}
    for i in ip:gmatch("(%d)") do
        table.insert(t, i)
    end
    local s = ""
    for i, v in ipairs(t) do
        if v ~= "0" then
            s = s .. v
        end
    end
    return s
end

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())