
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
    local reversed_word2 = ""
    for i = #word2, 1, -1 do
        reversed_word2 = reversed_word2 .. word2:sub(i, i)
    end
    return word1 .. reversed_word2
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