-- Given a string representing a space separated lowercase letters, return a table
-- of the letter with the most repetition and containing the corresponding count.
-- If several letters have the same occurrence, return all of them.
-- Example:
-- >>> histogram('a b c')
-- {['a'] = 1, ['b'] = 1, ['c'] = 1}
-- >>> histogram('a b b a')
-- {['a'] = 2, ['b'] = 2}
-- >>> histogram('a b c a b')
-- {['a'] = 2, ['b'] = 2}
-- >>> histogram('b b b b a')
-- {['b'] = 4}
-- >>> histogram('')
-- {}
local function histogram(test)
    local words = {}
    for word in string.gmatch(test, "%S+") do
        table.insert(words, word)
    end
    local count = {}
    for _, v in ipairs(words) do
        count[v] = (count[v] or 0) + 1
    end
    local max = 0
    for _, v in ipairs(words) do
        if count[v] > max then
            max = count[v]
        end
    end
    local result = {}
    for k, v in pairs(count) do
        if v == max then
            result[k] = v
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = histogram
    lu.assertEquals(candidate('a b b a'), {['a'] = 2, ['b'] = 2})
    lu.assertEquals(candidate('a b c a b'), {['a'] = 2, ['b'] = 2})
    lu.assertEquals(candidate('a b c d g'), {['a'] = 1, ['b'] = 1, ['c'] = 1, ['d'] = 1, ['g'] = 1})
    lu.assertEquals(candidate('r t g'), {['r'] = 1, ['t'] = 1, ['g'] = 1})
    lu.assertEquals(candidate('b b b b a'), {['b'] = 4})
    lu.assertEquals(candidate('r t g'), {['r'] = 1, ['t'] = 1, ['g'] = 1})
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('a'), {['a'] = 1})
end

os.exit(lu.LuaUnit.run())