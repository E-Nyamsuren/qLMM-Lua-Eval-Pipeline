-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
    local i = 1
    local j = 1
    while i <= #colors and j <= #patterns do
        if colors[i] == patterns[j] then
            i = i + 1
            j = j + 1
        elseif colors[i] == patterns[j + 1] then
            j = j + 1
        else
            return false
        end
    end
    return i > #colors and j > #patterns
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_samepatterns
    lu.assertEquals(candidate({'red', 'green', 'green'}, {'a', 'b', 'b'}), true)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b', 'b'}), false)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b'}), false)
end

os.exit(lu.LuaUnit.run())