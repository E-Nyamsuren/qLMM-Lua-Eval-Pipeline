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
	local music_table = {}
	local music_string_length = string.len(music_string)
	local music_string_index = 1
	local music_string_char = string.sub(music_string, music_string_index, music_string_index)
	while music_string_index <= music_string_length do
		if music_string_char == 'o' then
			table.insert(music_table, 4)
			music_string_index = music_string_index + 1
			music_string_char = string.sub(music_string, music_string_index, music_string_index)
		elseif music_string_char == '|' then
			table.insert(music_table, 2)
			music_string_index = music_string_index + 1
			music_string_char = string.sub(music_string, music_string_index, music_string_index)
		elseif music_string_char == '.' then
			table.insert(music_table, 1)
			music_string_index = music_string_index + 1
			music_string_char = string.sub(music_string, music_string_index, music_string_index)
		end
	end
	return music_table
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