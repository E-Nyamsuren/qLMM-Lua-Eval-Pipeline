function extraNumber(a, b, c)if a == b then
        return c
    elseif a == c then
        return b
    else
        return a
    end
end

lu = require('luaunit')

function testExtraNumber()
    local candidate = extraNumber
    lu.assertTrue(candidate(2, 7, 2) == 7)
    lu.assertTrue(candidate(3, 2, 2) == 3)
    lu.assertTrue(candidate(5, 5, 1) == 1)
    lu.assertTrue(candidate(500000000, 3, 500000000) == 3)
    lu.assertTrue(candidate(500000000, 500000000, 3) == 3)
end

os.exit(lu.LuaUnit.run())