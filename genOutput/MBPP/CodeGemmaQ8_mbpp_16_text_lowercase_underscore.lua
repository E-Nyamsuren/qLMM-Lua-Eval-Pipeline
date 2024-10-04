-- Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
local function text_lowercase_underscore(text)
    local text_lowercase_underscore = text:match("^[%a_]+$")
    return text_lowercase_underscore
end
print(text_lowercase_underscore("abc_def"))
print(text_lowercase_underscore("abc_def_"))
print(text_lowercase_underscore("abc_def_1"))
print(text_lowercase_underscore("abc_def_1_"))
print(text_lowercase_underscore("abc_def_1_2"))
print(text_lowercase_underscore("abc_def_1_2_"))
print(text_lowercase_underscore("abc_def_1_2_3"))
print(text_lowercase_underscore("abc_def_1_2_3_"))
print(text_lowercase_underscore("abc_def_1_2_3_4"))
print(text_lowercase_underscore("abc_def_1_2_3_4_"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7_"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7_8"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7_8_"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7_8_9"))
print(text_lowercase_underscore("abc_def_1_2_3_4_5_6_7_8

lu = require('luaunit')

function test_humaneval()
local candidate = text_lowercase_underscore
    lu.assertEquals(candidate('aab_cbbbc'), true)
    lu.assertEquals(candidate('aab_Abbbc'), false)
    lu.assertEquals(candidate('Aaab_abbbc'), false)
end

os.exit(lu.LuaUnit.run())