-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local function rotate(s)
        local t = {}
        for i = 1, #s do
            t[i] = s:sub(i, i)
        end
        local temp = t[1]
        for i = 1, #s - 1 do
            t[i] = t[i + 1]
        end
        t[#s] = temp
        local s = ""
        for i = 1, #t do
            s = s .. t[i]
        end
        return s
    end
    local function isOdd(s)
        local count = 0
        for i = 1, #s do
            if s:sub(i, i) == "1" then
                count = count + 1
            end
        end
        if count % 2 == 0 then
            return false
        else
            return true
        end
    end
    local function count(s, n)
        local count = 0
        for i = 1, n do
            if isOdd(s) then
                count = count + 1
            end
            s = rotate(s)
        end
        return count
    end
    return count(s, n)
end
print(odd_Equivalent("111000", 4))
print(odd_Equivalent("111000", 2))
print(odd_Equivalent("111000", 1))
print(odd_Equivalent("111000", 3))
print(odd_Equivalent("111000", 5))
print(odd_Equivalent("111000", 6))
print(odd_Equivalent("111000", 7))
print(odd_Equivalent("111000", 8))
print(odd_Equivalent("111000", 9))
print(odd_Equivalent("111000", 10))
print(odd_Equivalent("111000

lu = require('luaunit')

function test_humaneval()
local candidate = odd_Equivalent
    lu.assertEquals(candidate('011001', 6), 3)
    lu.assertEquals(candidate('11011', 5), 4)
    lu.assertEquals(candidate('1010', 4), 2)
end

os.exit(lu.LuaUnit.run())