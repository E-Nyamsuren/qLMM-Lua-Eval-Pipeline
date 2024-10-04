-- Create a function which takes a string representing a file's name, and returns
-- 'Yes' if the the file's name is valid, and returns 'No' otherwise.
-- A file's name is considered to be valid if and only if all the following conditions 
-- are met:
-- - There should not be more than three digits ('0'-'9') in the file's name.
-- - The file's name contains exactly one dot '.'
-- - The substring before the dot should not be empty, and it starts with a letter from 
-- the latin alphapet ('a'-'z' and 'A'-'Z').
-- - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
-- Examples:
-- >>> file_name_check('example.txt')
-- 'Yes'
-- >>> file_name_check('1example.dll')
-- 'No'
local function file_name_check(file_name)
	local count = 0
	local dot_pos = 0
	local after_dot = ""
	for i = 1, #file_name do
		if file_name:sub(i, i) == "." then
			dot_pos = i
		end
		if file_name:sub(i, i) >= "0" and file_name:sub(i, i) <= "9" then
			count = count + 1
		end
	end
	if count > 3 then
		return "No"
	end
	if dot_pos == 0 or dot_pos == #file_name then
		return "No"
	end
	if file_name:sub(1, dot_pos - 1) == "" or file_name:sub(1, dot_pos - 1):sub(1, 1) < "a" or file_name:sub(1, dot_pos - 1):sub(1, 1) > "z" and file_name:sub(1, dot_pos - 1):sub(1, 1) < "A" or file_name:sub(1, dot_pos - 1):sub(1

lu = require('luaunit')

function test_humaneval()
local candidate = file_name_check
    lu.assertEquals(candidate('example.txt'), 'Yes')
    lu.assertEquals(candidate('1example.dll'), 'No')
    lu.assertEquals(candidate('s1sdf3.asd'), 'No')
    lu.assertEquals(candidate('K.dll'), 'Yes')
    lu.assertEquals(candidate('MY16FILE3.exe'), 'Yes')
    lu.assertEquals(candidate('His12FILE94.exe'), 'No')
    lu.assertEquals(candidate('_Y.txt'), 'No')
    lu.assertEquals(candidate('?aREYA.exe'), 'No')
    lu.assertEquals(candidate('/this_is_valid.dll'), 'No')
    lu.assertEquals(candidate('this_is_valid.wow'), 'No')
    lu.assertEquals(candidate('this_is_valid.txt'), 'Yes')
    lu.assertEquals(candidate('this_is_valid.txtexe'), 'No')
    lu.assertEquals(candidate('#this2_i4s_5valid.ten'), 'No')
    lu.assertEquals(candidate('@this1_is6_valid.exe'), 'No')
    lu.assertEquals(candidate('this_is_12valid.6exe4.txt'), 'No')
    lu.assertEquals(candidate('all.exe.txt'), 'No')
    lu.assertEquals(candidate('I563_No.exe'), 'Yes')
    lu.assertEquals(candidate('Is3youfault.txt'), 'Yes')
    lu.assertEquals(candidate('no_one#knows.dll'), 'Yes')
    lu.assertEquals(candidate('1I563_Yes3.exe'), 'No')
    lu.assertEquals(candidate('I563_Yes3.txtt'), 'No')
    lu.assertEquals(candidate('final..txt'), 'No')
    lu.assertEquals(candidate('final132'), 'No')
    lu.assertEquals(candidate('_f4indsartal132.'), 'No')
    lu.assertEquals(candidate('.txt'), 'No')
    lu.assertEquals(candidate('s.'), 'No')
end

os.exit(lu.LuaUnit.run())