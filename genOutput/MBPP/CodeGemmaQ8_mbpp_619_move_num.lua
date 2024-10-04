-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
    local str_list = {}
    local num_list = {}
    local str_num = ""
    for i = 1, #test_str do
        if test_str:sub(i, i) >= "0" and test_str:sub(i, i) <= "9" then
            str_num = str_num .. test_str:sub(i, i)
        else
            if str_num ~= "" then
                table.insert(num_list, tonumber(str_num))
                str_num = ""
            end
            table.insert(str_list, test_str:sub(i, i))
        end
    end
    if str_num ~= "" then
        table.insert(num_list, tonumber(str_num))
    end
    local result = ""
    for i = 1, #str_list do
        result = result .. str_list[i]
    end
    for i = 1, #num_list do
        result = result .. num_list[i]
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())