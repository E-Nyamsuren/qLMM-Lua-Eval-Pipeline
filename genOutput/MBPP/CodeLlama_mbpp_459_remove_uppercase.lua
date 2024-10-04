-- Write a function to remove uppercase substrings from a given string.
local function remove_uppercase(str1)
    local str2 = ""
    for i = 1, #str1 do
        if string.byte(str1, i) >= 97 and string.byte(str1, i) <= 122 then
            str2 = str2 .. string.sub(str1, i, i)
        end
    end
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