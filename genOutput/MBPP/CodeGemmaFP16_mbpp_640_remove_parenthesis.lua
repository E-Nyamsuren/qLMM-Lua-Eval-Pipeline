-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
    local result = ""
    local in_parenthesis = false
    for i = 1, #items do
        local char = items:sub(i, i)
        if char == "(" then
            in_parenthesis = true
        elseif char == ")" then
            in_parenthesis = false
        elseif not in_parenthesis then
            result = result .. char
        end
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