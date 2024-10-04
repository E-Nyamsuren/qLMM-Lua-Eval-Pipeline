-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
    local non_zero = {}
    local zero = {}
    for i, v in ipairs(num_list) do
        if v ~= 0 then
            table.insert(non_zero, v)
        else
            table.insert(zero, v)
        end
    end
    for i, v in ipairs(zero) do
        table.insert(non_zero, v)
    end
    return non_zero
end

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())