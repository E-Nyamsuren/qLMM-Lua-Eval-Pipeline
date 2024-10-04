-- Write a luathon function to check whether every even index contains even numbers of a given table.
local function even_position(nums)
    for i = 1, #nums do
        if i % 2 == 0 and nums[i] % 2 == 0 then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_position
    lu.assertEquals(candidate({3, 2, 1}), false)
    lu.assertEquals(candidate({1, 2, 3}), false)
    lu.assertEquals(candidate({2, 1, 4}), true)
end

os.exit(lu.LuaUnit.run())