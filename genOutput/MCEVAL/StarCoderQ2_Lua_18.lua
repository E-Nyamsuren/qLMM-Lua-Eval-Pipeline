
--[[
Creates an ID by combining two words in a specific manner.
Parameters:
- word1 (string): The first word to be used in the ID.
- word2 (string): The second word to be used in the ID.
Returns:
string: A divine ID formed by reversing every other character of the second 
        word and combining it with the first word.
e.g.:
    >>> create_id("fish","cat")
    "ftiasch"
]]
function create_id(word1, word2)
    local id = ""
    local word1_length = string.len(word1)
    local word2_length = string.len(word2)
    local word1_index = 1
    local word2_index = 1
    local word1_char_index = 1
    local word2_char_index = 1
    local word1_char = string.sub(word1, word1_index, word1_index)
    local word2_char = string.sub(word2, word2_index, word2_index)
    while word1_index <= word1_length do
        id = id .. word1_char
        word1_index = word1_index + 1
        word1_char = string.sub(word1, word1_index, word1_index)
    end
    while word2_index <= word2_length do
        id = id .. word2_char
        word2_index = word2_index + 1
        word2_char = string.sub(word2, word2_index, word2_index)
    end
    return id
end


lu = require('luaunit')

function test_create_id()
    local candidate = create_id
    lu.assertTrue(candidate("fish", "cat") == "ftiasch")
    lu.assertTrue(candidate("icpc", "acm") == "imccpac")
    lu.assertTrue(candidate("oo", "w") == "owo")
    lu.assertTrue(candidate("hello", "world") == "hdellrloow")
    lu.assertTrue(candidate("abc", "def") == "afbecd")
    lu.assertTrue(candidate("buaanb", "nbbuaa") == "bauaauabnbbn")
    lu.assertTrue(candidate("xtuisgood", "ilovextu") == "xuttuxiesvgooloid")
end

os.exit(lu.LuaUnit.run())