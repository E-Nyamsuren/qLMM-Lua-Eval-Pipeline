-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
    local zero_count = 0
    for i = 1, #num_list do
        if num_list[i] == 0 then
            zero_count = zero_count + 1
        elseif num_list[i] ~= 0 then
            num_list[i - zero_count] = num_list[i]
        end
    end
    for i = 1, zero_count do
        num_list[#num_list - i + 1] = 0
    end
    return num_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())