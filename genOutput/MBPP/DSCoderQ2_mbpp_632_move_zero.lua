-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
    local count = 0
    for i = 1, #num_list do
        if num_list[i] ~= 0 then
            num_list[count + 1] = num_list[i]
            count = count + 1
        end
    end
    while count < #num_list do
        count = count + 1
        num_list[count] = 0
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())