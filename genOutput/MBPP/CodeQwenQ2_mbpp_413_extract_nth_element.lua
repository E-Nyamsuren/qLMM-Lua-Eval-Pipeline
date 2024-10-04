-- Write a function to extract the nth element from a given table of tables.
local function extract_nth_element(list1, n)
    if n < 1 or n > #list1 then
        return nil
    end
    local result = {}
    for i, v in ipairs(list1) do
        if type(v) == "table" then
            result[i] = v[n]
        else
            result[i] = v
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_nth_element
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 0), {'Greyson Fulton', 'Brady Kent', 'Wyatt Knott', 'Beau Turnbull'})
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 2), {99, 96, 94, 98})
    lu.assertEquals(candidate({{'Greyson Fulton', 98, 99}, {'Brady Kent', 97, 96}, {'Wyatt Knott', 91, 94}, {'Beau Turnbull', 94, 98}}, 1), {98, 97, 91, 94})
end

os.exit(lu.LuaUnit.run())