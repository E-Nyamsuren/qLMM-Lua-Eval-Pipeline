-- Write a luathon function to check whether the given two integers have opposite sign or not.
local function opposite_Signs(x, y)
    if x*y < 0 then
        return true
    else
        return false
    end
end
print(opposite_Signs(10, -20))
print(opposite_Signs(10, 20))
print(opposite_Signs(-10, -20))
print(opposite_Signs(-10, 20))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = opposite_Signs
    lu.assertEquals(candidate(1, -2), true)
    lu.assertEquals(candidate(3, 2), false)
    lu.assertEquals(candidate(-10, -10), false)
    lu.assertEquals(candidate(-2, 2), true)
end

os.exit(lu.LuaUnit.run())