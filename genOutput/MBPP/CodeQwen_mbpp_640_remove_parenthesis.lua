-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
    local result = {}
    for _, item in ipairs(items) do
        local cleaned_item = item:gsub("%(.*%)", "")
        table.insert(result, cleaned_item)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())