-- Write a function to find whether a given table of integers contains any duplicate element.
local function test_duplicate(arraynums)
    local hash = {}
    for i = 1, #arraynums do
        if hash[arraynums[i]] then
            return true
        end
        hash[arraynums[i]] = true
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = test_duplicate
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 4}), true)
    lu.assertEquals(candidate({1, 1, 2, 2, 3, 3, 4, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())