-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local parts = {}
    for part in ip:gmatch("%d+") do
        table.insert(parts, part)
    end
    local new_ip = ""
    for i, part in ipairs(parts) do
        if i > 1 then
            new_ip = new_ip .. "."
        end
        new_ip = new_ip .. part
    end
    return new_ip
end

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())