-- Write a function to remove uppercase substrings from a given string.
local function remove_uppercase(str1)
    local str2 = ""
    for i = 1, #str1 do
        local char = string.sub(str1, i, i)
        if string.lower(char) ~= char then
            str2 = str2 .. char
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