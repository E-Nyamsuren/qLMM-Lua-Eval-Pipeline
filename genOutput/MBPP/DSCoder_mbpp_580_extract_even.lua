-- Write a function to remove uneven elements in the nested mixed table.
local function extract_even(test_tuple)
    local even_tuple = {}
    for i, v in ipairs(test_tuple) do
        if type(v) == "table" then
            table.insert(even_tuple, extract_even(v))
        elseif v % 2 == 0 then
            table.insert(even_tuple, v)
        end
    end
    return even_tuple
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_even
    lu.assertEquals(candidate({4, 5, {7, 6, {2, 4}}, 6, 8}), {4, {6, {2, 4}}, 6, 8})
    lu.assertEquals(candidate({5, 6, {8, 7, {4, 8}}, 7, 9}), {6, {8, {4, 8}}})
    lu.assertEquals(candidate({5, 6, {9, 8, {4, 6}}, 8, 10}), {6, {8, {4, 6}}, 8, 10})
end

os.exit(lu.LuaUnit.run())