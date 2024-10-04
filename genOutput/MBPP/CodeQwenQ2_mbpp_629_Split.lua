-- Write a luathon function to find even numbers from a table of numbers.
local function Split(list)
    local even_numbers = {}
    for i, v in ipairs(list) do
        if v % 2 == 0 then
            table.insert(even_numbers, v)
        end
    end
    return even_numbers
end
return Split

lu = require('luaunit')

function test_humaneval()
local candidate = Split
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {2, 4})
    lu.assertEquals(candidate({4, 5, 6, 7, 8, 0, 1}), {4, 6, 8, 0})
    lu.assertEquals(candidate({8, 12, 15, 19}), {8, 12})
end

os.exit(lu.LuaUnit.run())