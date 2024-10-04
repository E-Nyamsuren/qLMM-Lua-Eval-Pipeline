-- Write a function to extract the nth element from a given table of tables.
local function extract_nth_element(list1, n)
    -- Check if the input is valid
    if not list1 or not n or type(n) ~= 'number' then
        return nil
    end
    
    -- Initialize the result
    local result = {}
    
    -- Iterate over the input list
    for _, sublist in ipairs(list1) do
        -- Check if the sublist has enough elements
        if #sublist >= n then
            -- Append the nth element to the result
            table.insert(result, sublist[n])
        end
    end
    
    -- Return the result
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