-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = Stack()
    for i = 1, #exp do
        local c = exp:sub(i, i)
        if c == '(' or c == '{' or c == '[' then
            stack:push(c)
        elseif c == ')' or c == '}' or c == ']' then
            if stack:is_empty() then
                return false
            end
            local top = stack:top()
            if (c == ')' and top == '(') or (c == '}' and top == '{') or (c == ']' and top == '[') then
                stack:pop()
            else
                return false
            end
        end
    end
    return stack:is_empty()
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_expression
    lu.assertEquals(candidate('{()}[{}]'), true)
    lu.assertEquals(candidate('{()}[{]'), false)
    lu.assertEquals(candidate('{()}[{}][]({})'), true)
end

os.exit(lu.LuaUnit.run())