-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
    local num_str = ""
    local str_arr = {}
    for i = 1, #test_str do
        if test_str:sub(i, i) == "0" or test_str:sub(i, i) == "1" or test_str:sub(i, i) == "2" or test_str:sub(i, i) == "3" or test_str:sub(i, i) == "4" or test_str:sub(i, i) == "5" or test_str:sub(i, i) == "6" or test_str:sub(i, i) == "7" or test_str:sub(i, i) == "8" or test_str:sub(i, i) == "9" then
            num_str = num_str .. test_str:sub(i, i)
        else
            str_arr[#str_arr + 1] = test_str:sub(i, i)
        end
    end
    return num_str .. table.concat(str_arr, "")
end
print(move_num("0123456789"))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())