-- Write a luathon function to get the difference between two tables.
local function Diff(li1, li2)
    local result = {}
    for i = 1, #li1 do
        local isCommon = false
        for j = 1, #li2 do
            if li1[i] == li2[j] then
                isCommon = true
                break
            end
        end
        if not isCommon then
            table.insert(result, li1[i])
        end
    end
    for i = 1, #li2 do
        local isCommon = false
        for j = 1, #li1 do
            if li2[i] == li1[j] then
                isCommon = true
                break
            end
        end
        if not isCommon then
            table.insert(result, li2[i])
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = Diff
    lu.assertEquals(candidate({10, 15, 20, 25, 30, 35, 40}, {25, 40, 35}), {10, 20, 30, 15})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 1}), {2, 3, 4, 5, 6, 7})
    lu.assertEquals(candidate({1, 2, 3}, {6, 7, 1}), {2, 3, 6, 7})
end

os.exit(lu.LuaUnit.run())