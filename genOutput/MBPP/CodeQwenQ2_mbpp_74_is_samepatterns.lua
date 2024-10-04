-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
    local same_patterns = true
    for i = 1, #colors do
        if colors[i] ~= patterns[i] then
            same_patterns = false
            break
        end
    end
    return same_patterns
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_samepatterns
    lu.assertEquals(candidate({'red', 'green', 'green'}, {'a', 'b', 'b'}), true)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b', 'b'}), false)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b'}), false)
end

os.exit(lu.LuaUnit.run())