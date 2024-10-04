-- Write a function to check whether the given string is starting with a vowel or not using regex.
local function check_str(string)

  local vowels = "aeiouAEIOU"
  local match = string.match(string, "^[%a%s*%w*"..vowels.."[aeiouAEIOU]")

lu = require('luaunit')

function test_humaneval()
local candidate = check_str
    lu.assertEquals(candidate('annie'), true)
    lu.assertEquals(candidate('dawood'), false)
    lu.assertEquals(candidate('Else'), true)
end

os.exit(lu.LuaUnit.run())