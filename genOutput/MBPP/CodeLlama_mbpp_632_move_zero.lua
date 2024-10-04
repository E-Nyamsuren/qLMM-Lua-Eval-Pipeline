-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
    local zero_list = {}
    local non_zero_list = {}
    for i, v in ipairs(num_list) do
        if v == 0 then
            table.insert(zero_list, v)
        else
            table.insert(non_zero_list, v)
        end
    end
    return table.concat(non_zero_list, " ") .. " " .. table.concat(zero_list, " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())