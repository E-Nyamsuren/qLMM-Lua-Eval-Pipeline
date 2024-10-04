-- Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
-- For each of the group, output the deepest level of nesting of parentheses.
-- E.g. (()()) has maximum two levels of nesting while ((())) has three.
-- >>> parse_nested_parens('(()()) ((())) () ((())()())')
-- {2, 3, 1, 3}
local function parse_nested_parens(paren_string)
    local result = {}
    for group in paren_string:gmatch("%S+") do
        local max_depth = 0
        local current_depth = 0
        for char in group:gmatch(".") do
            if char == '(' then
                current_depth = current_depth + 1
                if current_depth > max_depth then
                    max_depth = current_depth
                end
            elseif char == ')' then
                current_depth = current_depth - 1
            end
        end
        table.insert(result, max_depth)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = parse_nested_parens
    lu.assertEquals(candidate('(()()) ((())) () ((())()())'), {2, 3, 1, 3})
    lu.assertEquals(candidate('() (()) ((())) (((())))'), {1, 2, 3, 4})
    lu.assertEquals(candidate('(()(())((())))'), {4})
end

os.exit(lu.LuaUnit.run())