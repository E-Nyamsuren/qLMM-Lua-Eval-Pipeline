-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
    local result = {}
    for i = 1, #items do
        if items:sub(i, i) ~= "(" and items:sub(i, i) ~= ")" then
            table.insert(result, items:sub(i, i))
        end
    end
    return table.concat(result)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())