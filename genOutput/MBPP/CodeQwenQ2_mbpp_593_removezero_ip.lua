-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_split = {}
    for i in ip:gmatch("%S+") do
        table.insert(ip_split, i)
    end
    for i = 1, #ip_split do
        if ip_split[i] == "0" then
            ip_split[i] = ""
        end
    end
    return table.concat(ip_split, ".")
end
print(removezero_ip("192.168.0.1"))  -- Output: 192.168.0.1
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.1.0"))  -- Output: 192.168.1.0
print(removezero_ip("192.168.1.1"))  -- Output: 192.168.1.1
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.1.0"))  -- Output: 192.168.1.0
print(removezero_ip("192.168.1.1"))  -- Output: 192.168.1.1
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.1.0"))  -- Output: 192.168.1.0
print(removezero_ip("192.168.1.1"))  -- Output: 192.168.1.1
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0
print(removezero_ip("192.168.0.0"))  -- Output: 192.168.0.0


lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())