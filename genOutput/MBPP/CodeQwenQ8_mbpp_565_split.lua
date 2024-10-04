-- Write a luathon function to split a string into characters.
local function split(word)
    local characters = {}
    for i = 1, #word do
        characters[i] = word:sub(i, i)
    end
    return characters
end

lu = require('luaunit')

function test_humaneval()
local candidate = split
    lu.assertEquals(candidate('python'), {'p', 'y', 't', 'h', 'o', 'n'})
    lu.assertEquals(candidate('Name'), {'N', 'a', 'm', 'e'})
    lu.assertEquals(candidate('program'), {'p', 'r', 'o', 'g', 'r', 'a', 'm'})
end

os.exit(lu.LuaUnit.run())