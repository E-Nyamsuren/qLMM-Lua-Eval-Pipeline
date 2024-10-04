
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
    local word2_reversed = ""
    for i = #word2, 1, -1 do
        word2_reversed = word2_reversed .. word2:sub(i, i)
    end
    for i = 1, #word1 do
        id = id .. word1:sub(i, i)
        if i <= #word2_reversed then
            id = id .. word2_reversed:sub(i, i)
        end
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