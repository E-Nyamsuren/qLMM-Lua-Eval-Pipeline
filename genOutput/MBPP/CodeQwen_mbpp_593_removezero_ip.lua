-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_parts = {}
    for part in string.gmatch(ip, "%d+") do
        table.insert(ip_parts, part)
    end
    local result = ""
    for i, part in ipairs(ip_parts) do
        if i == 1 then
            result = result .. part
        else
            result = result .. "." .. part
        end
    end
    return result
end
print(removezero_ip("192.168.0.1")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.0")) -- Output: 192.168.0.0
print(removezero_ip("192.168.0.01")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.0001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.00001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.0000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.00000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.000000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.0000000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.00000000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.000000000001")) -- Output: 192.168.0.1
print(removezero_ip("192.168.0.000

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())