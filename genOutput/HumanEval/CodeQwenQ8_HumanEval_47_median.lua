-- Return median of elements in the table l.
-- >>> median({3, 1, 2, 4, 5})
-- 3
-- >>> median({-10, 4, 6, 1000, 10, 20})
-- 15.0
local function median(l)
    table.sort(l)
    local n = #l
    if n % 2 == 0 then
        return (l[n / 2] + l[n / 2 + 1]) / 2
    else
        return l[math.floor(n / 2) + 1]
    end
end
print(median({3, 1, 2, 4, 5})) -- 3
print(median({-10, 4, 6, 1000, 10, 20})) -- 15.0
print(median({1, 2, 3, 4, 5, 6})) -- 3.5
print(median({1, 2, 3, 4, 5, 6, 7})) -- 4.0
print(median({1, 2, 3, 4, 5, 6, 7, 8})) -- 4.5
print(median({1, 2, 3, 4, 5, 6, 7, 8, 9})) -- 5.0
print(median({1, 2, 3, 4, 5, 6, 7, 8, 9, 10})) -- 5.5
print(median({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11})) -- 6.0
print(median({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12})) -- 6.5
print(median({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13})) -- 7.0
print(med

lu = require('luaunit')

function test_humaneval()
local candidate = median
    lu.assertEquals(candidate({3, 1, 2, 4, 5}), 3)
    lu.assertEquals(candidate({-10, 4, 6, 1000, 10, 20}), 8.0)
    lu.assertEquals(candidate({5}), 5)
    lu.assertEquals(candidate({6, 5}), 5.5)
    lu.assertEquals(candidate({8, 1, 3, 9, 9, 2, 7}), 7)
end

os.exit(lu.LuaUnit.run())