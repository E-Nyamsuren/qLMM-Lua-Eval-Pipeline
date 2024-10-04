-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    local opening_brackets = {'(', '{', '['}
    local closing_brackets = {')', '}', ']'}
    local bracket_pairs = {
        ['('] = ')',
        ['{'] = '}',
        ['['] = ']'
    }
    
    for i = 1, #exp do
        local char = exp[i]
        if char == '(' or char == '{' or char == '[' then
            table.insert(stack, char)
        elseif char == ')' or char == '}' or char == ']' then
            if #stack == 0 then
                return false
            end
            local last_bracket = stack[#stack]
            if bracket_pairs[last_bracket] ~= char then
                return false
            end
            table.remove(stack, #stack)
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