-- Input to this function is a string representing musical notes in a special ASCII format.
-- Your task is to parse this string and return table of integers corresponding to how many beats does each
-- not last.
-- Here is a legend:
-- 'o' - whole note, lasts four beats
-- 'o|' - half note, lasts two beats
-- '.|' - quater note, lasts one beat
-- >>> parse_music('o o| .| o| o| .| .| .| .| o o')
-- {4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4}
local function parse_music(music_string)
    local notes = {}
    local beat = 0
    for i = 1, #music_string do
        local note = music_string:sub(i, i)
        if note == 'o' then
            beat = 4
        elseif note == '|' then
            beat = beat / 2
        end
        table.insert(notes, beat)
    end
    return notes
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = parse_music
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('o o o o'), {4, 4, 4, 4})
    lu.assertEquals(candidate('.| .| .| .|'), {1, 1, 1, 1})
    lu.assertEquals(candidate('o| o| .| .| o o o o'), {2, 2, 1, 1, 4, 4, 4, 4})
    lu.assertEquals(candidate('o| .| o| .| o o| o o|'), {2, 1, 2, 1, 4, 2, 4, 2})
end

os.exit(lu.LuaUnit.run())