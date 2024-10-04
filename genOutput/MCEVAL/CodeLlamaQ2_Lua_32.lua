
--[[
Given a sequence of n events, each occurring with a periodicity of a_i years,
the problem is to find the year Y_n when the n-th event occurs, under the condition
that the countdown for event i+1 can only commence in the year immediately following
the occurrence of event i.

    >>> apocalypseYear(6, {3, 2, 4, 5, 9, 18})
    36
]]--
function apocalypseYear(n, signs)
    local years = {}
    for i, v in ipairs(signs) do
        years[i] = v
    end
    local count = 0
    local year = 0
    while count < n do
        year = year + years[count+1]
        count = count + 1
    end
    return year
end

lu = require('luaunit')

function testApocalypseYear()
    local candidate = apocalypseYear
    lu.assertTrue(candidate(6, {3, 2, 4, 5, 9, 18}) == 36)
    lu.assertTrue(candidate(5, {1, 2, 3, 4, 5}) == 5)
    lu.assertTrue(candidate(5, {1, 1, 1, 1, 1}) == 5)
    lu.assertTrue(candidate(6, {50, 30, 711, 200, 503, 1006}) == 2012)
    lu.assertTrue(candidate(2, {1, 2}) == 2)
    lu.assertTrue(candidate(3, {3, 1, 2}) == 6)
    lu.assertTrue(candidate(3, {2, 3, 4}) == 4)
    lu.assertTrue(candidate(4, {1, 2, 3, 4}) == 4)
    lu.assertTrue(candidate(4, {5, 7, 11, 13}) == 13)
    lu.assertTrue(candidate(5, {2, 2, 2, 2, 2}) == 10)
    lu.assertTrue(candidate(3, {6, 10, 15}) == 15)
    lu.assertTrue(candidate(3, {4, 6, 14}) == 14)
    lu.assertTrue(candidate(4, {50, 30, 711, 200}) == 800)
    lu.assertTrue(candidate(6, {1, 1, 1, 1, 1, 1}) == 6)
    lu.assertTrue(candidate(2, {1000000, 999999}) == 1999998)
end

os.exit(lu.LuaUnit.run())