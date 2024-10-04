-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    for i = 1, #exp do
        local c = exp:sub(i,i)
        if c == '(' or c == '{' or c == '[' then
            table.insert(stack, c)
        elseif c == ')' or c == '}' or c == ']' then
            if #stack == 0 then
                return false
            end
            local top = table.remove(stack)
            if (c == ')' and top ~= '(') or (c == '}' and top ~= '{') or (c == ']' and top ~= '[') then
                return false
            end
        else
            -- ignore other characters
        end
    end
    if #stack ~= 0 then
        return false
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_expression
    lu.assertEquals(candidate('{()}[{}]'), true)
    lu.assertEquals(candidate('{()}[{]'), false)
    lu.assertEquals(candidate('{()}[{}][]({})'), true)
end

os.exit(lu.LuaUnit.run())