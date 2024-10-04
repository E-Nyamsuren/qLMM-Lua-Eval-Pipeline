-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
	local ip_split = {string.match(ip, "(%d+)%.")}
	local ip_result = {}
	for i = 1, #ip_split do
		table.insert(ip_result, string.match(ip_split[i], "(%d+)%."))
	end
	return table.concat(ip_result, ".")
end

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())