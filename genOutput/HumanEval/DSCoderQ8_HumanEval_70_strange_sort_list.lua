-- Given table of integers, return table in strange order.
-- Strange sorting, is when you start with the minimum value,
-- then maximum of the remaining integers, then minimum and so on.
-- Examples:
-- >>> strange_sort_list({1, 2, 3, 4})
-- {1, 4, 2, 3}
-- >>> strange_sort_list({5, 5, 5, 5})
-- {5, 5, 5, 5}
-- >>> strange_sort_list({})
-- {}
local function strange_sort_list(lst)
    table.sort(lst)
    local res = {}
    while #lst > 0 do
        table.insert(res, table.remove(lst, 1))
        if #lst > 0 then
            table.insert(res, table.remove(lst, #lst))
        end
    end
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = strange_sort_list
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 4, 2, 3})
    lu.assertEquals(candidate({5, 6, 7, 8, 9}), {5, 9, 6, 8, 7})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {1, 5, 2, 4, 3})
    lu.assertEquals(candidate({5, 6, 7, 8, 9, 1}), {1, 9, 5, 8, 6, 7})
    lu.assertEquals(candidate({5, 5, 5, 5}), {5, 5, 5, 5})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}), {1, 8, 2, 7, 3, 6, 4, 5})
    lu.assertEquals(candidate({0, 2, 2, 2, 5, 5, -5, -5}), {-5, 5, -5, 5, 0, 2, 2, 2})
    lu.assertEquals(candidate({111111}), {111111})
end

os.exit(lu.LuaUnit.run())