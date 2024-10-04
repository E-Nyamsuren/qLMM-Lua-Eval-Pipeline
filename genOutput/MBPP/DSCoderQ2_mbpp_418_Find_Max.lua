-- Write a luathon function to find the element of a table having maximum length.
local function Find_Max(lst)
    local max_len = 0
    local max_element
    for _, element in ipairs(lst) do
        if #element > max_len then
            max_len = #element
            max_element = element
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Max
    lu.assertEquals(candidate({{'A'}, {'A', 'B'}, {'A', 'B', 'C'}}), {'A', 'B', 'C'})
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1, 2, 3})
    lu.assertEquals(candidate({{1, 1}, {1, 2, 3}, {1, 5, 6, 1}}), {1, 5, 6, 1})
end

os.exit(lu.LuaUnit.run())