-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
  local paren_string = paren_string:gsub(' ', '')
  local paren_string = paren_string:gsub('((%b()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()()()()()()()()()()()()()()))', '(%1)')
  local paren_string = paren_string:gsub('((%b()

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())