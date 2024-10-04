-- Write a function to toggle the case of all characters in a string.
local function toggle_string(string)

  -- Create a new string to hold the toggled characters
  local toggled_string = ''

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_string
    lu.assertEquals(candidate('Python'), 'pYTHON')
    lu.assertEquals(candidate('Pangram'), 'pANGRAM')
    lu.assertEquals(candidate('LIttLE'), 'liTTle')
end

os.exit(lu.LuaUnit.run())