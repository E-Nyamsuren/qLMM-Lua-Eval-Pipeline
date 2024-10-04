-- Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
-- separate those group into separate strings and return the table of those.
-- Separate groups are balanced (each open brace is properly closed) and not nested within each other
-- Ignore any spaces in the input string.
-- >>> separate_paren_groups('( ) (( )) (( )( ))')
-- {'()', '(())', '(()())'}
local function separate_paren_groups(paren_string)
  local groups = {}
  local group = ""
  local paren_stack = {}
  local paren_stack_index = 0
  local paren_stack_top = function()
    return paren_stack[paren_stack_index]
  end
  local paren_stack_push = function(paren)
    paren_stack_index = paren_stack_index + 1
    paren_stack[paren_stack_index] = paren
  end
  local paren_stack_pop = function()
    if paren_stack_index > 0 then
      paren_stack_index = paren_stack_index - 1
    end
  end
  local paren_stack_empty = function()
    return paren_stack_index == 0
  end
  local paren_stack_peek = function()
    return paren_stack[paren_stack_index]
  end
  local paren_stack_size = function()
    return paren_stack_index
  end
  local paren_stack_clear = function()
    paren_stack_index = 0
  end
  local paren_stack_contains = function(paren)
    for i = 1, paren_stack_index do
      if paren_stack[i] == paren then
        return true
      end
    end
    return false
  end
  local paren_stack_contains_any = function(parens)
    for i = 1, paren_stack_index do
      if paren_stack_contains(parens[i]) then
        return true
      end
    end
    return false
  end
  local paren_stack_contains_all = function(parens)
    for i = 1, paren_stack_index do
      if not paren_stack_contains(pare

lu = require('luaunit')

function test_humaneval()
local candidate = separate_paren_groups
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {'(()())', '((()))', '()', '((())()())'})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {'()', '(())', '((()))', '(((())))'})
    lu.assertEquals(candidate('(()(())((())))'), {'(()(())((())))'})
    lu.assertEquals(candidate('( ) (( )) (( )( ))'), {'()', '(())', '(()())'})
end

os.exit(lu.LuaUnit.run())