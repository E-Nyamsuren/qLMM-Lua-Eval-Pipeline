-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    local opening_brackets = {
        ['('] = ')',
        ['{'] = '}',
        ['['] = ']',
    }
    local closing_brackets = {
        [')'] = true,
        ['}'] = true,
        [']'] = true,
    }
    for i = 1, #exp do
        local char = exp:sub(i, i)
        if opening_brackets[char] then
            table.insert(stack, char)
        elseif closing_brackets[char] then
            local last_opening_bracket = stack[#stack]
            if last_opening_bracket == opening_brackets[char] then
                table.remove(stack)
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