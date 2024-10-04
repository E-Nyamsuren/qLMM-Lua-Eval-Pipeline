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
    local count_digit = 0
    local count_alpha = 0
    local count_dot = 0
    for i = 1, #file_name do
        local c = file_name:sub(i,i)
        if c >= '0' and c <= '9' then
            count_digit = count_digit + 1
        elseif c >= 'a' and c <= 'z' or c >= 'A' and c <= 'Z' then
            count_alpha = count_alpha + 1
        elseif c == '.' then
            count_dot = count_dot + 1
        end
    end
    if count_digit > 3 or count_alpha == 0 or count_dot ~= 1 then
        return 'No'
    else
        local ext = file_name:sub(#file_name - 3, #file_name)
        if ext ~= 'txt' and ext ~= 'exe' and ext ~= 'dll' then
            return 'No'
        else
            return 'Yes'
        end
    end
end

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