-- Write a luathon function to move all zeroes to the end of the given table.
local function move_zero(num_list)
    local count = 0
    for i = 1, #num_list do
        if num_list[i] == 0 then
            count = count + 1
        else
            num_list[i - count] = num_list[i]
        end
    end
    for i = #num_list - count + 1, #num_list do
        num_list[i] = 0
    end
    return num_list
end
print(table.unpack(move_zero({0, 1, 0, 3, 12})))
print(table.unpack(move_zero({0, 0, 1})))
print(table.unpack(move_zero({0, 0, 0})))
print(table.unpack(move_zero({1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 0, 0, 0, 1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5})))
print(table.unpack(move_zero({0, 0, 

lu = require('luaunit')

function test_humaneval()
local candidate = move_zero
    lu.assertEquals(candidate({1, 0, 2, 0, 3, 4}), {1, 2, 3, 4, 0, 0})
    lu.assertEquals(candidate({2, 3, 2, 0, 0, 4, 0, 5, 0}), {2, 3, 2, 4, 5, 0, 0, 0, 0})
    lu.assertEquals(candidate({0, 1, 0, 1, 1}), {1, 1, 1, 0, 0})
end

os.exit(lu.LuaUnit.run())