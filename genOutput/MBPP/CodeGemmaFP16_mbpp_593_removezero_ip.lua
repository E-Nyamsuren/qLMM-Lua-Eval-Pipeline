-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_list = ip:split(".")
    for i,v in ipairs(ip_list) do
        if v == "0" then
            table.remove(ip_list, i)
        end
    end
    return table.concat(ip_list, ".")
end
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_ip("192.0.0.1"))
print(removezero_ip("192.0.0.0"))
print(removezero_

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())