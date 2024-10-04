-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local str = tostring(n)
    if #str < 3 then
        return false
    end
    local first_digit = str:sub(1, 1)
    local second_digit = str:sub(2, 2)
    if first_digit == second_digit then
        return false
    end
    for i = 3, #str, 2 do
        if str:sub(i, i) ~= first_digit then
            return false
        end
    end
    for i = 4, #str, 2 do
        if str:sub(i, i) ~= second_digit then
            return false
        end
    end
    return true
end
print(is_undulating(123)) -- true
print(is_undulating(121)) -- true
print(is_undulating(122)) -- false
print(is_undulating(1234)) -- false
print(is_undulating(1212)) -- true
print(is_undulating(12121)) -- true
print(is_undulating(121212)) -- false
print(is_undulating(123456)) -- false
print(is_undulating(12121212)) -- true
print(is_undulating(1212121212)) -- true
print(is_undulating(121212121212)) -- false
print(is_undulating(123456789)) -- false
print(is_undulating(12121212121212)) -- true
print(is_undulating(1212121212121212)) -- true
print(is_undulating(121212121212121212)) -- false
print(is_undulating(123456789101112)) -- false
print(is_undulating(12121212121212121212)) -- true
print(is_undulating(1212121212121212121212)) -- true
print(is_undulating(121212121212121212121212)) -- false
print(is_undulating(1234567891011121314)) -- false
print(is_undulating(12121212121212121212121212

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())