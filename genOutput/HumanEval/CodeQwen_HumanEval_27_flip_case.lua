-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
    local result = ''
    for i = 1, #string do
        local char = string:sub(i, i)
        if char:match('[a-z]') then
            result = result .. char:upper()
        elseif char:match('[A-Z]') then
            result = result .. char:lower()
        else
            result = result .. char
        end
    end
    return result
end
print(flip_case('Hello')) -- 'hELLO'
print(flip_case('Python3.8')) -- 'pYTHON3.8'
print(flip_case('123abcABC')) -- '123ABCabc'
print(flip_case('')) -- ''
print(flip_case('!@#$%^&*()')) -- '!@#$%^&*()'
print(flip_case('1234567890')) -- '1234567890'
print(flip_case(' ')) -- ' '
print(flip_case('\n')) -- '\n'
print(flip_case('\t')) -- '\t'
print(flip_case('\r')) -- '\r'
print(flip_case('\f')) -- '\f'
print(flip_case('\v')) -- '\v'
print(flip_case('\b')) -- '\b'
print(flip_case('\a')) -- '\a'
print(flip_case('\e')) -- '\e'
print(flip_case('\d')) -- '\d'
print(flip_case('\o')) -- '\o'
print(flip_case('\s')) -- '\s'
print(flip_case('\u')) -- '\u'
print(flip_case('\l')) -- '\l'
print(flip_case('\p')) -- '\p'
print(flip_case('\q')) -- '\q'
print(flip

lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())