-- Write a function to remove all the words with k length in the given string.
local function remove_length(test_str, K)
    local words = {}
    for word in string.gmatch(test_str, "([^%s]+)") do
        table.insert(words, word)
    end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_length
    lu.assertEquals(candidate('The person is most value tet', 3), 'person is most value')
    lu.assertEquals(candidate('If you told me about this ok', 4), 'If you me about ok')
    lu.assertEquals(candidate('Forces of darkeness is come into the play', 4), 'Forces of darkeness is the')
end

os.exit(lu.LuaUnit.run())