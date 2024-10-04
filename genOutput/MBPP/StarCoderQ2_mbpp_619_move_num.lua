-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
	local num_str = ""
	local non_num_str = ""
	local num_found = false
	local non_num_found = false
	local num_count = 0
	local non_num_count = 0
	local num_pos = 0
	local non_num_pos = 0
	local num_pos_end = 0
	local non_num_pos_end = 0
	local num_pos_start = 0
	local non_num_pos_start = 0
	local num_pos_end_start = 0
	local non_num_pos_end_start = 0
	local num_pos_end_end = 0
	local non_num_pos_end_end = 0
	local num_pos_start_start = 0
	local non_num_pos_start_start = 0
	local num_pos_end_start_start = 0
	local non_num_pos_end_start_start = 0
	local num_pos_end_end_end = 0
	local non_num_pos_end_end_end = 0
	local num_pos_start_start_start = 0
	local non_num_pos_start_start_start = 0
	local num_pos_end_start_start_start = 0
	local non_num_pos_end_start_start_start = 0
	local num_pos_end_end_end_end = 0
	local non_num_pos_end_end_end_end = 0
	local num_pos_start_start_start_start = 0
	local non_num_pos_start_start_start_start = 0
	local num_pos_end_start_start_start_start = 0
	local non_num_pos_end_start_start_start_start = 0
	local num_pos_end_end_end_end_end = 0
	local non_num_pos_end_end_

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())