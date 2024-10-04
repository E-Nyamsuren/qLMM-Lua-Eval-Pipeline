-- Write a function to remove all the words with k length in the given string.
local function remove_length(test_str, K)
    local result = {}
    local words = {}
    local i = 1
    local j = 1
    local k = 1
    local len = string.len(test_str)
    while i <= len do
        if string.sub(test_str, i, i) ~= " " then
            words[j] = words[j] .. string.sub(test_str, i, i)
            i = i + 1
        else
            j = j + 1
            i = i + 1
        end
    end
    for k = 1, #words do
        if string.len(words[k]) ~= K then
            result[k] = words[k]
        end
    end
    return table.concat(result, " ")
end
print(remove_length("the quick brown fox jumps over the lazy dog", 4))


lu = require('luaunit')

function test_humaneval()
local candidate = remove_length
    lu.assertEquals(candidate('The person is most value tet', 3), 'person is most value')
    lu.assertEquals(candidate('If you told me about this ok', 4), 'If you me about ok')
    lu.assertEquals(candidate('Forces of darkeness is come into the play', 4), 'Forces of darkeness is the')
end

os.exit(lu.LuaUnit.run())