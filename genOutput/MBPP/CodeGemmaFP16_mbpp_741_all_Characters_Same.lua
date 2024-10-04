-- Write a luathon function to check whether all the characters are same or not.
local function all_Characters_Same(s)
    local n = #s
    local c = s:sub(1,1)
    for i = 2, n do
        if s:sub(i,i) ~= c then
            return false
        end
    end
    return true
end
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_Characters_Same("abc"))
print(all_

lu = require('luaunit')

function test_humaneval()
local candidate = all_Characters_Same
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('aaa'), true)
    lu.assertEquals(candidate('data'), false)
end

os.exit(lu.LuaUnit.run())