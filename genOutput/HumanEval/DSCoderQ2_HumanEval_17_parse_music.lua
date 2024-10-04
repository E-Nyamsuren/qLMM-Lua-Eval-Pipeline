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
    local notes = music_string:gmatch(".")
    local note_durations = {}
    for note in notes do
        if note == 'o' then table.insert(note_durations, 4)
        elseif note == '|' then
            if note_durations[#note_durations] == 4 then note_durations[#note_durations] = 2
            elseif note_durations[#note_durations] == 2 then note_durations[#note_durations] = 1
            else note_durations[#note_durations] = 1 end
        end
    end
    return note_durations
end

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