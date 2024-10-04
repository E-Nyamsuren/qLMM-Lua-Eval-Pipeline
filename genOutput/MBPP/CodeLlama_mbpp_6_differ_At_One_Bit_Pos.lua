-- Write a luathon function to check whether the two numbers differ at one bit position only or not.
local function differ_At_One_Bit_Pos(a, b)
    local a_bin = tostring(a)
    local b_bin = tostring(b)
    local a_bin_len = #a_bin
    local b_bin_len = #b_bin
    local a_bin_len_diff = a_bin_len - b_bin_len
    local b_bin_len_diff = b_bin_len - a_bin_len
    if a_bin_len_diff ~= 0 or b_bin_len_diff ~= 0 then
        return false
    end
    for i = 1, a_bin_len do
        if a_bin:sub(i, i) ~= b_bin:sub(i, i) then
            if a_bin:sub(i, i) == "1" and b_bin:sub(i, i) == "1" then
                return false
            end
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = differ_At_One_Bit_Pos
    lu.assertEquals(candidate(13, 9), true)
    lu.assertEquals(candidate(15, 8), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(2, 3), true)
    lu.assertEquals(candidate(5, 1), true)
    lu.assertEquals(candidate(1, 5), true)
end

os.exit(lu.LuaUnit.run())