-- You are given a table of two strings, both strings consist of open
-- parentheses '(' or close parentheses ')' only.
-- Your job is to check if it is possible to concatenate the two strings in
-- some order, that the resulting string will be good.
-- A string S is considered to be good if and only if all parentheses in S
-- are balanced. For example: the string '(())()' is good, while the string
-- '())' is not.
-- Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
-- Examples:
-- >>> match_parens({'()(', ')'})
-- 'Yes'
-- >>> match_parens({')', ')'})
-- 'No'
local function match_parens(lst)
    local stack = {}
    for _, v in ipairs(lst) do
        if v == '(' then
            table.insert(stack, v)
        else
            if #stack == 0 then
                return 'No'
            end
            table.remove(stack)
        end
    end
    return #stack == 0 and 'Yes' or 'No'
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = match_parens
    lu.assertEquals(candidate({'()(', ')'}), 'Yes')
    lu.assertEquals(candidate({')', ')'}), 'No')
    lu.assertEquals(candidate({'(()(())', '())())'}), 'No')
    lu.assertEquals(candidate({')())', '(()()('}), 'Yes')
    lu.assertEquals(candidate({'(())))', '(()())(('}), 'Yes')
    lu.assertEquals(candidate({'()', '())'}), 'No')
    lu.assertEquals(candidate({'(()(', '()))()'}), 'Yes')
    lu.assertEquals(candidate({'((((', '((())'}), 'No')
    lu.assertEquals(candidate({')(()', '(()('}), 'No')
    lu.assertEquals(candidate({')(', ')('}), 'No')
    lu.assertEquals(candidate({'(', ')'}), 'Yes')
    lu.assertEquals(candidate({')', '('}), 'Yes')
end

os.exit(lu.LuaUnit.run())