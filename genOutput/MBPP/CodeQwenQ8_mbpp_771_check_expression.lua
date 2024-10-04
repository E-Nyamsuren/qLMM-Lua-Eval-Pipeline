-- Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
local function check_expression(exp)
    local stack = {}
    local mapping = {
        ["("] = ")",
        ["{"] = "}",
        ["["] = "]"
    }
    for i = 1, #exp do
        local char = exp:sub(i, i)
        if mapping[char] then
            table.insert(stack, char)
        else
            local last_char = stack[#stack]
            if last_char and mapping[last_char] == char then
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