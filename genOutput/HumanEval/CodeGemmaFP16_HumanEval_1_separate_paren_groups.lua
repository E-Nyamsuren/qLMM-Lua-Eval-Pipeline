-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local groups = {}
    local current_group = ""
    local open_parens = 0
    local close_parens = 0
    for i = 1, #paren_string do
        local char = paren_string:sub(i, i)
        if char == "(" then
            open_parens = open_parens + 1
            current_group = current_group .. char
        elseif char == ")" then
            close_parens = close_parens + 1
            current_group = current_group .. char
            if open_parens == close_parens then
                table.insert(groups, current_group)
                current_group = ""
                open_parens = 0
                close_parens = 0
            end
        else
            current_group = current_group .. char
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