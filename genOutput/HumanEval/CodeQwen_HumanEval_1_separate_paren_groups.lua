-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local groups = {}
    local current_group = ''
    local depth = 0
    for char in paren_string:gmatch('.') do
        if char == '(' then
            depth = depth + 1
        elseif char == ')' then
            depth = depth - 1
        end
        current_group = current_group .. char
        if depth == 0 and current_group ~= '' then
            table.insert(groups, current_group)
            current_group = ''
        end
    end
    return groups
end
print(separate_paren_groups('( ) (( )) (( )( ))')) -- {'()', '(())', '(()())'}
print(separate_paren_groups('((()))(())()')) -- {'((()))', '(())', '()'}
print(separate_paren_groups('()')) -- {'()'}
print(separate_paren_groups('')) -- {}
print(separate_paren_groups('((( )))')) -- {'((( )))'}
print(separate_paren_groups('((())()())')) -- {'((())()())'}
print(separate_paren_groups('((())()())()')) -- {'((())()())', '()'}
print(separate_paren_groups('((())()())()()')) -- {'((())()())', '()', '()'}
print(separate_paren_groups('((())()())()()()')) -- {'((())()())', '()', '()', '()'}
print(separate_paren_groups('((())()())()()()()')) -- {'((())()())', '()', '()', '()', '()'}
print(separate_

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())