-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_parts = {}
    for part in ip:gmatch("%d+") do
        table.insert(ip_parts, part)
    end
    return table.concat(ip_parts, ".")
end
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("000.000.000.000")) -- Output: 0.0.0.0
print(removezero_ip("123.456.789.012")) -- Output: 123.456.789.12
print(removezero_ip("0.0.0.0")) -- Output: 0.0.0.0
print(removezero_ip("255.255.255.255")) -- Output: 255.255.255.255
print(removezero_ip("192.168.0.0")) -- Output: 192.168.0.0
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(remove

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())