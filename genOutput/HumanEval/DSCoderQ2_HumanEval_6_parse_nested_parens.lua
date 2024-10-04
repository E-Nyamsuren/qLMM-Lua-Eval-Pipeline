-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
  local levels = {}
  local groups = {string.gmatch(paren_string, "([^ ]+)")}
  for _, group in ipairs(groups) do
    local level = 0
    local max_level = 0
    for i = 1, #group do
      if group:sub(i, i) == "(" then
        level = level + 1
        if level > max_level then
          max_level = level
        end
      elseif group:sub(i, i) == ")" then
        level = level - 1
      end
    end
    table.insert(levels, max_level)
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