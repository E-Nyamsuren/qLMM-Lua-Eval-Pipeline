-- Write a luathon function to get the difference between two tables.
local function Diff(li1, li2)
    local li_dif = {}
    local li1_size = #li1
    local li2_size = #li2
    local i = 1
    local j = 1
    while i <= li1_size and j <= li2_size do
        if li1[i] == li2[j] then
            i = i + 1
            j = j + 1
        elseif li1[i] < li2[j] then
            li_dif[#li_dif + 1] = li1[i]
            i = i + 1
        else
            li_dif[#li_dif + 1] = li2[j]
            j = j + 1
        end
    end
    while i <= li1_size do
        li_dif[#li_dif + 1] = li1[i]
        i = i + 1
    end
    while j <= li2_size do
        li_dif[#li_dif + 1] = li2[j]
        j = j + 1
    end
    return li_dif
end

lu = require('luaunit')

function test_humaneval()
local candidate = Diff
    lu.assertEquals(candidate({10, 15, 20, 25, 30, 35, 40}, {25, 40, 35}), {10, 20, 30, 15})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 1}), {2, 3, 4, 5, 6, 7})
    lu.assertEquals(candidate({1, 2, 3}, {6, 7, 1}), {2, 3, 6, 7})
end

os.exit(lu.LuaUnit.run())