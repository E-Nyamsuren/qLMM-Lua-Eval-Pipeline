-- Write a function to find the n'th star number.
local function find_star_num(n)
    local count = 0
    local num = 1
    while count < n do
        num = num + 1
        local stars = 0
        local temp = num
        while temp > 0 do
            if temp % 2 == 1 then
                stars = stars + 1
            end
            temp = temp // 2
        end
        if stars == num then
            count = count + 1
        end
    end
    return num
end
print(find_star_num(1)) -- 1
print(find_star_num(2)) -- 2
print(find_star_num(3)) -- 3
print(find_star_num(4)) -- 4
print(find_star_num(5)) -- 5
print(find_star_num(6)) -- 6
print(find_star_num(7)) -- 7
print(find_star_num(8)) -- 8
print(find_star_num(9)) -- 9
print(find_star_num(10)) -- 10
print(find_star_num(11)) -- 11
print(find_star_num(12)) -- 12
print(find_star_num(13)) -- 13
print(find_star_num(14)) -- 14
print(find_star_num(15)) -- 15
print(find_star_num(16)) -- 16
print(find_star_num(17)) -- 17
print(find_star_num(18)) -- 18
print(find_star_num(19)) -- 19
print(find_star_num(20)) -- 20
print(find_star_num(21)) -- 21
print(find_star_num(22)) -- 22
print(find_star_num(23)) -- 23
print(find_star_num(24)) -- 24
print(find_star_num(25)) -- 25
print(find_star_num(26)) -- 26
print(find_star_num(27)) -- 

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())