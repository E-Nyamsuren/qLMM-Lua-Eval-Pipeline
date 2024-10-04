-- Return length of given string
-- >>> strlen('')
-- 0
-- >>> strlen('abc')
-- 3
local function strlen(string)
    return #string
end
print(strlen('')) -- 0
print(strlen('abc')) -- 3
print(strlen('Hello, World!')) -- 13
print(strlen('1234567890')) -- 10
print(strlen('Python Programming')) -- 18
print(strlen('!@#$%^&*()')) -- 11
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('')) -- 0
print(strlen('

lu = require('luaunit')

function test_humaneval()
local candidate = strlen
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('x'), 1)
    lu.assertEquals(candidate('asdasnakj'), 9)
end

os.exit(lu.LuaUnit.run())