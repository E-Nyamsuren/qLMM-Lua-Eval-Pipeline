
--[[
Display the ASCII information for a given character.
    
Parameters:
- character: The input character for which ASCII information is to be displayed.
    
Returns:
- The corresponding ASCII code

Example:
display_ascii_info('A') -- Returns 65
]]--
function display_ascii_info(character)
    return string.byte(character)
end

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