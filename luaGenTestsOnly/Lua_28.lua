lu = require('luaunit')

function testDisplayAsciiInfo()
    local candidate = display_ascii_info
    lu.assertTrue(candidate('A') == 65)
    lu.assertTrue(candidate('B') == 66) -- Additional test case
    lu.assertTrue(candidate('0') == 48) -- Additional test case
    lu.assertTrue(candidate(' ') == 32) -- Additional test case
    -- print("All tests passed.")
end

os.exit(lu.LuaUnit.run())