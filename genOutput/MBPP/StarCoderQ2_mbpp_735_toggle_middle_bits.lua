-- Write a luathon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
local function toggle_middle_bits(n)
	local mask = 1 << (math.log(n) / math.log(2))
	local mask_bit = mask - 1
	local mask_bit_count = math.floor(math.log(mask_bit) / math.log(2))
	local mask_bit_count_plus_one = mask_bit_count + 1
	local mask_bit_count_plus_two = mask_bit_count_plus_one + mask_bit_count_plus_one
	local mask_bit_count_plus_three = mask_bit_count_plus_two + mask_bit_count_plus_two
	local mask_bit_count_plus_four = mask_bit_count_plus_three + mask_bit_count_plus_three
	local mask_bit_count_plus_five = mask_bit_count_plus_four + mask_bit_count_plus_four
	local mask_bit_count_plus_six = mask_bit_count_plus_five + mask_bit_count_plus_five
	local mask_bit_count_plus_seven = mask_bit_count_plus_six + mask_bit_count_plus_six
	local mask_bit_count_plus_eight = mask_bit_count_plus_seven + mask_bit_count_plus_seven
	local mask_bit_count_plus_nine = mask_bit_count_plus_eight + mask_bit_count_plus_eight
	local mask_bit_count_plus_ten = mask_bit_count_plus_nine + mask_bit_count_plus_nine
	local mask_bit_count_plus_eleven = mask_bit_count_plus_ten + mask_bit_count_plus_ten
	local mask_bit_count_plus_twelve = mask_bit_count_plus_eleven + mask_bit_count_plus_eleven
	local mask_bit_count_plus_

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_middle_bits
    lu.assertEquals(candidate(9), 15)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(11), 13)
    lu.assertEquals(candidate(65), 127)
    lu.assertEquals(candidate(77), 115)
end

os.exit(lu.LuaUnit.run())