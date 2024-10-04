-- Filter given table of any luathon values only for integers
-- >>> filter_integers({'a', 3.14, 5})
-- {5}
-- >>> filter_integers({1, 2, 3, 'abc', {}, {}})
-- {1, 2, 3}
local function filter_integers(values)
    local integers = {}
    for _, value in ipairs(values) do
        if type(value) == 'number' and value == math.floor(value) then
            table.insert(integers, value)
        end
    end
    return integers
end
print(filter_integers({'a', 3.14, 5})) -- {5}
print(filter_integers({1, 2, 3, 'abc', {}, {}})) -- {1, 2, 3}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9})) -- {5, 6, 9}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9, 'b'})) -- {5, 6, 9}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9, 'b', 10})) -- {5, 6, 9, 10}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9, 'b', 10, 11})) -- {5, 6, 9, 10, 11}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9, 'b', 10, 11, 12})) -- {5, 6, 9, 10, 11, 12}
print(filter_integers({'a', 3.14, 5, 6, 7.8, 9, 'b', 10, 11, 12, 13})) -- {5, 6, 9, 10, 11, 12, 

lu = require('luaunit')

function test_humaneval()
local candidate = filter_integers
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({4, {}, {}, 23.2, 9, 'adasd'}), {4, 9})
    lu.assertEquals(candidate({3, 'c', 3, 3, 'a', 'b'}), {3, 3, 3})
end

os.exit(lu.LuaUnit.run())