lu = require('luaunit')

function test_calculate_function_value()
    local candidate = calculate_function_value
    lu.assertEquals(candidate(40), "Not define")
    lu.assertEquals(candidate(5), "-0.14550")
    lu.assertEquals(candidate(15), "0.76266")
    lu.assertEquals(candidate(25), "0.31314")
    lu.assertEquals(candidate(-1), "Not define")
end

os.exit(lu.LuaUnit.run())