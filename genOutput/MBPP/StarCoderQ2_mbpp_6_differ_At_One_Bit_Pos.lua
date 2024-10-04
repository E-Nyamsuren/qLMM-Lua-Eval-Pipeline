-- Write a luathon function to check whether the two numbers differ at one bit position only or not.
local function differ_At_One_Bit_Pos(a, b)
	local a_bit_pos = a:bit_pos()
	local b_bit_pos = b:bit_pos()
	local a_bit_val = a:bit_val()
	local b_bit_val = b:bit_val()
	local diff = a_bit_val + b_bit_val
	local diff_bit_pos = diff:bit_pos()
	local diff_bit_val = diff:bit_val()
	local result = false
	if diff_bit_val == 1 then
		result = true
	end
	return result
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