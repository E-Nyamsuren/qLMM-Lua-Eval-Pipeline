-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
    local num_str = ''
    local alpha_str = ''
    for i = 1, #test_str do
        local c = test_str:sub(i,i)
        if c:match('%d') then
            num_str = num_str .. c
        else
            alpha_str = alpha_str .. c
        end
    end
    return alpha_str .. num_str
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())