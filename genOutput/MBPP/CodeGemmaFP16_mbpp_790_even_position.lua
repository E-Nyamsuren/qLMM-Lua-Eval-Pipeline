-- Write a luathon function to check whether every even index contains even numbers of a given table.
local function even_position(nums)
    local even_count = 0
    local odd_count = 0
    for i = 1, #nums do
        if i % 2 == 0 then
            even_count = even_count + 1
        else
            odd_count = odd_count + 1
        end
    end
    return even_count == odd_count
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_position
    lu.assertEquals(candidate({3, 2, 1}), false)
    lu.assertEquals(candidate({1, 2, 3}), false)
    lu.assertEquals(candidate({2, 1, 4}), true)
end

os.exit(lu.LuaUnit.run())