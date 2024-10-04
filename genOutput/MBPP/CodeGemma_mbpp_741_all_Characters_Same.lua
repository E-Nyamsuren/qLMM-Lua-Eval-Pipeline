-- Write a luathon function to check whether all the characters are same or not.
local function all_Characters_Same(s)
    local first = s:sub(1,1)
    for i = 2,#s do
        if s:sub(i,i) ~= first then
            return false
        end
    end
    return true
end
print(all_Characters_Same("aaaaa"))
print(all_Characters_Same("aabbb"))
print(all_Characters_Same("aabbcc"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_Characters_Same("aabbccdd"))
print(all_

lu = require('luaunit')

function test_humaneval()
local candidate = all_Characters_Same
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('aaa'), true)
    lu.assertEquals(candidate('data'), false)
end

os.exit(lu.LuaUnit.run())