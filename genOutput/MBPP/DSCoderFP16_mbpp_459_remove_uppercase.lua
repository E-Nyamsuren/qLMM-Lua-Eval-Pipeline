-- Write a function to remove uppercase substrings from a given string.
local function remove_uppercase(str1)
    local str2 = str1:lower()
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_uppercase
    lu.assertEquals(candidate('cAstyoUrFavoRitETVshoWs'), 'cstyoravoitshos')
    lu.assertEquals(candidate('wAtchTheinTernEtrAdIo'), 'wtchheinerntrdo')
    lu.assertEquals(candidate('VoicESeaRchAndreComMendaTionS'), 'oiceachndreomendaion')
end

os.exit(lu.LuaUnit.run())