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
    for word in test:gmatch("%w+") do
        table.insert(words, word)
    end
    local hist = {}
    for _, word in ipairs(words) do
        hist[word] = (hist[word] or 0) + 1
    end
    local max = 0
    for _, count in pairs(hist) do
        max = math.max(max, count)
    end
    local result = {}
    for letter, count in pairs(hist) do
        if count == max then
            result[#result+1] = {letter}
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