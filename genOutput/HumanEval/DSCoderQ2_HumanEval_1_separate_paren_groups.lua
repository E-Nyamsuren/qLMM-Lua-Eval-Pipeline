-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local stack = {''}
    local count = 0
    for c in paren_string:gmatch('.') do
        if c == '(' then
            count = count + 1
            if count > 1 then
                table.insert(stack, '')
            end
        elseif c == ')' then
            count = count - 1
        else
            stack[count] = stack[count] .. c
       
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