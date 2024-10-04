-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    local open_brackets = {['('] = true, ['['] = true, ['{'] = true}
    local close_brackets = {[')'] = true, [']'] = true, ['}'] = true}
    local bracket_pairs = {['('] = ')', ['['] = ']', ['{'] = '}'}
    for i = 1, #exp do
        local char = exp:sub(i, i)
        if open_brackets[char] then
            table.insert(stack, char)
        elseif close_brackets[char] then
            if #stack == 0 then
                return false
            end
            local top = stack[#stack]
            if bracket_pairs[top] ~= char then
                return false
            end
            table.remove(stack)
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