-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_list = {}
    for i in string.gmatch(ip, "%d+") do
        table.insert(ip_list, i)
    end
    local new_ip = ""
    for i, v in ipairs(ip_list) do
        if v ~= "0" then
            new_ip = new_ip .. v
            if i ~= #ip_list then
                new_ip = new_ip .. "."
            end
        end
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