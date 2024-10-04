-- Filter given table of any luathon values only for integers
-- >>> filter_integers({'a', 3.14, 5})
-- {5}
-- >>> filter_integers({1, 2, 3, 'abc', {}, {}})
-- {1, 2, 3}
local function filter_integers(values)
    local result = {}
    for _, value in ipairs(values) do
        if type(value) == 'number' and value % 1 == 0 then
            table.insert(result, value)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = filter_integers
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({4, {}, {}, 23.2, 9, 'adasd'}), {4, 9})
    lu.assertEquals(candidate({3, 'c', 3, 3, 'a', 'b'}), {3, 3, 3})
end

os.exit(lu.LuaUnit.run())