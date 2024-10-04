-- Write a function that accepts two tables of strings and returns the table that has 
-- total number of chars in the all strings of the table less than the other table.
-- if the two tables have the same number of chars, return the first table.
-- Examples
-- >>> total_match({}, {})
-- {}
-- >>> total_match({'hi', 'admin'}, {'hI', 'Hi'})
-- {'hI', 'Hi'}
-- >>> total_match({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'})
-- {'hi', 'admin'}
-- >>> total_match({'hi', 'admin'}, {'hI', 'hi', 'hi'})
-- {'hI', 'hi', 'hi'}
-- >>> total_match({'4'}, {'1', '2', '3', '4', '5'})
-- {'4'}
local function total_match(lst1, lst2)
    local lst3 = {}
    for i = 1, #lst1 do
        local count = 0
        for j = 1, #lst2 do
            if lst1[i] == lst2[j] then
                count = count + 1
            end
        end
        if count < #lst2 then
            table.insert(lst3, lst1[i])
        end
    end
    return lst3
end
print(total_match({'hi', 'admin'}, {'hI', 'Hi'}))
print(total_match({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'}))
print(total_match({'hi', 'admin'}, {'hI', 'hi', 'hi'}))
print(total_match({'4'}, {'1', '2', '3', '4', '5'}))
<|file_separator|> -- Write a function that accepts two tables of strings and returns the table that has the total number of chars in the all strings of the table less than the other table.

lu = require('luaunit')

function test_humaneval()
local candidate = total_match
    lu.assertEquals(candidate({}, {}), {})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi'}), {'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'}), {'hi', 'admin'})
    lu.assertEquals(candidate({'4'}, {'1', '2', '3', '4', '5'}), {'4'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'Hi'}), {'hI', 'Hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hi'}), {'hI', 'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hii'}), {'hi', 'admin'})
    lu.assertEquals(candidate({}, {'this'}), {})
    lu.assertEquals(candidate({'this'}, {}), {})
end

os.exit(lu.LuaUnit.run())