-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local groups = {}
    local stack = {}
    local current_group = ''
    for i = 1, #paren_string do
        local c = paren_string:sub(i, i)
        if c == '(' then
            if #current_group > 0 then
                table.insert(stack, current_group)
                current_group = ''
            end
            table.insert(stack, '(')
        elseif c == ')' then
            table.insert(stack, ')')
            if #stack % 2 == 0 then
                current_group = table.concat(stack)
                table.insert(groups, current_group)
                stack = {}
                current_group = ''
            end
        elseif c ~= ' ' then
            current_group = current_group .. c
        end
    end
    return groups
end

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())