-- Write a function to remove uppercase substrings from a given string.
local function remove_uppercase(str1)
    local result = ""
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if char:match("%u") then
            result = result .. char
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_uppercase
    lu.assertEquals(candidate('cAstyoUrFavoRitETVshoWs'), 'cstyoravoitshos')
    lu.assertEquals(candidate('wAtchTheinTernEtrAdIo'), 'wtchheinerntrdo')
    lu.assertEquals(candidate('VoicESeaRchAndreComMendaTionS'), 'oiceachndreomendaion')
end

os.exit(lu.LuaUnit.run())