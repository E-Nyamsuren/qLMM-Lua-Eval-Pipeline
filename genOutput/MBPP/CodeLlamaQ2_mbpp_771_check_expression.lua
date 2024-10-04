-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    for i = 1, #exp do
        if exp[i] == "(" or exp[i] == "[" or exp[i] == "{" then
            stack[#stack+1] = exp[i]
        elseif exp[i] == ")" or exp[i] == "]" or exp[i] == "}" then
            if #stack == 0 then
                return false
            end
            local top = stack[#stack]
            if (top == "(" and exp[i] == ")") or (top == "[" and exp[i] == "]") or (top == "{" and exp[i] == "}") then
                stack[#stack] = nil
            else
                return false
            end
        end
    end
    return #stack == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_expression
    lu.assertEquals(candidate('{()}[{}]'), true)
    lu.assertEquals(candidate('{()}[{]'), false)
    lu.assertEquals(candidate('{()}[{}][]({})'), true)
end

os.exit(lu.LuaUnit.run())