-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local n = #str
    local temp = str .. str
    local len = n * 2
    local z = {}
    for i = 1 to len do
        z[i] = 0
    end
    local l = 0
    local r = 0
    local k = 0
    for i = 2 to len do
        if r > i then
            z[i] = math.min(r - i + 1, z[i - l])
        end
        while i + z[i] < len and str[i + z[i] + 1] == str[z[i] + 1] do
            z[i] = z[i] + 1
        end
        if i + z[i] > r then
            l = i
            r = z[i]
        end
        if z[i] == n then
            k = k + 1
        end
    end
    return k
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())