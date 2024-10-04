lu = require('luaunit')

function testFindMaxMin()
    local candidate = find_max_min
    local result

    result = candidate(1, 2, 3)
    lu.assertTrue(result.max == 3 and result.min == 1)

    -- Additional tests
    result = candidate(5, 3, 4)
    lu.assertTrue(result.max == 5 and result.min == 3)

    result = candidate(10, -2, 7)
    lu.assertTrue(result.max == 10 and result.min == -2)

    result = candidate(-1, -3, -2)
    lu.assertTrue(result.max == -1 and result.min == -3)
end

os.exit(lu.LuaUnit.run())