-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
	local values = {}
	local start = 1
	local end_of_value = 1
	local in_quotes = false
	local in_escape = false
	local in_escape_quote = false
	local in_escape_backslash = false
	local in_escape_newline = false
	local in_escape_tab = false
	local in_escape_space = false
	local in_escape_return = false
	local in_escape_backspace = false
	local in_escape_formfeed = false
	local in_escape_verticaltab = false
	local in_escape_carriage = false
	local in_escape_null = false
	local in_escape_delete = false
	local in_escape_hex = false
	local in_escape_octal = false
	local in_escape_unicode = false
	local in_escape_utf8 = false
	local in_escape_utf16 = false
	local in_escape_utf32 = false
	local in_escape_utf7 = false
	local in_escape_utf8_hex = false
	local in_escape_utf8_octal = false
	local in_escape_utf8_unicode = false
	local in_escape_utf8_utf16 = false
	local in_escape_utf8_utf32 = false
	local in_escape_utf8_utf7 = false
	local in_escape_utf8_utf8_hex = false
	local in_escape_utf8_utf8_octal = false
	local in_escape_utf8_utf8_unicode = false
	local in_escape_utf8_utf8_utf16 = false
	local in_escape_utf8_utf8_utf32 = false
	local in_escape_utf8_utf8_utf7 = false
	local in_escape_utf8_utf8_utf8_hex = false
	local in_escape_utf8_utf8_utf8_octal = false
	local in_escape_utf8_utf8_utf8_unicode = false
	local

lu = require('luaunit')

function test_humaneval()
local candidate = extract_values
    lu.assertEquals(candidate('"Python", "PHP", "Java"'), {'Python', 'PHP', 'Java'})
    lu.assertEquals(candidate('"python","program","language"'), {'python', 'program', 'language'})
    lu.assertEquals(candidate('"red","blue","green","yellow"'), {'red', 'blue', 'green', 'yellow'})
end

os.exit(lu.LuaUnit.run())