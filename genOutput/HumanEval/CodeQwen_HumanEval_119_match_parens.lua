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
    local s1, s2 = lst[1], lst[2]
    local balance = 0
    for i = 1, #s1 do
        if s1:sub(i, i) == '(' then
            balance = balance + 1
        else
            balance = balance - 1
        end
        if balance < 0 then
            return 'No'
        end
    end
    for i = 1, #s2 do
        if s2:sub(i, i) == '(' then
            balance = balance + 1
        else
            balance = balance - 1
        end
        if balance < 0 then
            return 'No'
        end
    end
    return balance == 0 and 'Yes' or 'No'
end

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