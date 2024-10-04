-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local result = {}
    local current_string = ''
    local depth = 0
    for i = 1, #paren_string do
        local char = paren_string:sub(i, i)
        if char == '(' then
            depth = depth + 1
        elseif char == ')' then
            depth = depth - 1
        end
        current_string = current_string .. char
        if depth == 0 and current_string ~= '' then
            table.insert(result, current_string)
            current_string = ''
        end
    end
    return result
end
print(table.unpack(separate_paren_groups('( ) (( )) (( )( ))')))

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())