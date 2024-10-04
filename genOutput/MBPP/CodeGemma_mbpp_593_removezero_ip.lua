-- Write a function to remove leading zeroes from an ip address.
local function removezero_ip(ip)
    local ip_table = {}
    local ip_string = ""
    local ip_table_length = 0
    local ip_string_length = 0
    local ip_string_length_temp = 0
    local ip_string_length_temp_2 = 0
    local ip_string_length_temp_3 = 0
    local ip_string_length_temp_4 = 0
    local ip_string_length_temp_5 = 0
    local ip_string_length_temp_6 = 0
    local ip_string_length_temp_7 = 0
    local ip_string_length_temp_8 = 0
    local ip_string_length_temp_9 = 0
    local ip_string_length_temp_10 = 0
    local ip_string_length_temp_11 = 0
    local ip_string_length_temp_12 = 0
    local ip_string_length_temp_13 = 0
    local ip_string_length_temp_14 = 0
    local ip_string_length_temp_15 = 0
    local ip_string_length_temp_16 = 0
    local ip_string_length_temp_17 = 0
    local ip_string_length_temp_18 = 0
    local ip_string_length_temp_19 = 0
    local ip_string_length_temp_20 = 0
    local ip_string_length_temp_21 = 0
    local ip_string_length_temp_22 = 0
    local ip_string_length_temp_23 = 0
    local ip_string_length_temp_24 = 0
    local ip_string_length_temp_25 = 0
    local ip_string_length_temp_26 = 0
    local ip_string_length_temp_27 = 0
    local ip_string_length_temp_28 = 0
    local ip_string_length_temp_29

lu = require('luaunit')

function test_humaneval()
local candidate = removezero_ip
    lu.assertEquals(candidate('216.08.094.196'), '216.8.94.196')
    lu.assertEquals(candidate('12.01.024'), '12.1.24')
    lu.assertEquals(candidate('216.08.094.0196'), '216.8.94.196')
end

os.exit(lu.LuaUnit.run())