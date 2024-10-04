-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local groups = {}
    local group = ''
    local open_count = 0
    local close_count = 0
    for i = 1, #paren_string do
        local char = paren_string:sub(i, i)
        if char == '(' then
            open_count = open_count + 1
        elseif char == ')' then
            close_count = close_count + 1
        end
        if open_count == close_count then
            table.insert(groups, group)
            group = ''
        end
        group = group .. char
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