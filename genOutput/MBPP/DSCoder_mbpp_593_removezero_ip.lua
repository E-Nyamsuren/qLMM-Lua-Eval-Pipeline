-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_parts = {}
    for part in ip:gmatch("([^.]+)") do
        if part:sub(1,1) == "0" then
            part = part:sub(2)
        end
        table.insert(ip_parts, part)
    end
    return table.concat(ip_parts, ".")
end

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())