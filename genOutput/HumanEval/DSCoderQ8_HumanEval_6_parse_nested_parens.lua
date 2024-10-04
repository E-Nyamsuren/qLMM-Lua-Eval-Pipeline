-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
  local levels = {}
  for group in string.gmatch(paren_string, "%S+") do
    local count, max = 0, 0
    for char in string.gmatch(group, ".") do
      if char == "(" then
        count = count + 1
        if count > max then
          max = count
        end
      elseif char == ")" then
        count = count - 1
      end
    end
    table.insert(levels, max)
  end
  return levels
end

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())