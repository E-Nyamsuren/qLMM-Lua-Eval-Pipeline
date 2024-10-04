-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
    local pattern_count = {}
    for _, pattern in ipairs(patterns) do
        pattern_count[pattern] = (pattern_count[pattern] or 0) + 1
    end
    for _, color in ipairs(colors) do
        if pattern_count[color] == nil then
            return false
        end
        pattern_count[color] = pattern_count[color] - 1
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_samepatterns
    lu.assertEquals(candidate({'red', 'green', 'green'}, {'a', 'b', 'b'}), true)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b', 'b'}), false)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b'}), false)
end

os.exit(lu.LuaUnit.run())