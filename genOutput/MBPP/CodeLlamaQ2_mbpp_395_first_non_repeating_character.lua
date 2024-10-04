-- Write a luathon function to find the first non-repeated character in a given string.
local function first_non_repeating_character(str1)
    local str2 = str1:gsub("(.)", "%1 "):gsub(" ", ""):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"):gsub("(.)", "%1"

lu = require('luaunit')

function test_humaneval()
local candidate = first_non_repeating_character
    lu.assertEquals(candidate('abcabc'), None)
    lu.assertEquals(candidate('abc'), 'a')
    lu.assertEquals(candidate('ababc'), 'c')
end

os.exit(lu.LuaUnit.run())