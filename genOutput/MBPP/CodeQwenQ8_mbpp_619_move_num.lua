-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
    local num_str = ""
    local non_num_str = ""
    for i = 1, #test_str do
        if test_str:sub(i,i):match("%d") then
            num_str = num_str .. test_str:sub(i,i)
        else
            non_num_str = non_num_str .. test_str:sub(i,i)
        end
    end
    return non_num_str .. num_str
end
print(move_num("abc123")) -- Output: "abc123"
print(move_num("123abc")) -- Output: "123abc"
print(move_num("a1b2c3")) -- Output: "abc123"
print(move_num("abc")) -- Output: "abc"
print(move_num("123")) -- Output: "123"
print(move_num("")) -- Output: ""
print(move_num("a1b2c3d4e5")) -- Output: "abcde12345"
print(move_num("1a2b3c4d5e")) -- Output: "abcde12345"
print(move_num("a1b2c3d4e5f6")) -- Output: "abcdef123456"
print(move_num("1a2b3c4d5e6f")) -- Output: "abcdef123456"
print(move_num("a1b2c3d4e5f6g7")) -- Output: "abcdefg1234567"
print(move_num("1a2b3c4d5e6f7g")) -- Output: "abcdefg1234567"
print(move_num("a1b2c3d4e5f6g7h8")) -- Output: "abcdefgh12345678"
print(move_num("1a2b3c4d5e6f7g8h")) -- Output: "abcdefgh12345678"
print(move_num("a1b2c3d4e5f6g7h8

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())