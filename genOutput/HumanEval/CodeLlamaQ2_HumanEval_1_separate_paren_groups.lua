-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
    local paren_groups = {}
    local paren_stack = {}
    local paren_start = 1
    local paren_end = 1
    local paren_count = 0
    local paren_open = false
    local paren_open_char = nil
    local paren_close_char = nil
    local paren_close = false
    local paren_close_count = 0
    local paren_close_index = 0
    local paren_close_start = 0
    local paren_close_end = 0
    local paren_close_groups = {}
    local paren_close_group = nil
    local paren_close_group_start = 0
    local paren_close_group_end = 0
    local paren_close_group_count = 0
    local paren_close_group_index = 0
    local paren_close_group_paren_count = 0
    local paren_close_group_paren_open = false
    local paren_close_group_paren_open_char = nil
    local paren_close_group_paren_close = false
    local paren_close_group_paren_close_char = nil
    local paren_close_group_paren_close_count = 0
    local paren_close_group_paren_close_index = 0
    local paren_close_group_paren_close_start = 0
    local paren_close_group_paren_close_end = 0
    local paren_close_group_paren_close_groups = {}

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())