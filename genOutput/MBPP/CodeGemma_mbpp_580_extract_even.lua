-- Write a function to remove uneven elements in the nested mixed table.
local function extract_even(test_tuple)
    local even_elements = {}
    for i = 1, #test_tuple do
        if test_tuple[i] % 2 == 0 then
            even_elements[#even_elements + 1] = test_tuple[i]
        end
    end
    return even_elements
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_even
    lu.assertEquals(candidate({4, 5, {7, 6, {2, 4}}, 6, 8}), {4, {6, {2, 4}}, 6, 8})
    lu.assertEquals(candidate({5, 6, {8, 7, {4, 8}}, 7, 9}), {6, {8, {4, 8}}})
    lu.assertEquals(candidate({5, 6, {9, 8, {4, 6}}, 8, 10}), {6, {8, {4, 6}}, 8, 10})
end

os.exit(lu.LuaUnit.run())