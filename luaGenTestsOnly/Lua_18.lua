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